.class Lcom/facebook/applinks/FacebookAppLinkResolver$2;
.super Ljava/lang/Object;
.source "FacebookAppLinkResolver.java"

# interfaces
.implements Lcom/facebook/GraphRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/applinks/FacebookAppLinkResolver;->getAppLinkFromUrlsInBackground(Ljava/util/List;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/applinks/FacebookAppLinkResolver;

.field final synthetic val$appLinkResults:Ljava/util/Map;

.field final synthetic val$taskCompletionSource:Lbolts/Task$TaskCompletionSource;

.field final synthetic val$urisToRequest:Ljava/util/HashSet;


# direct methods
.method constructor <init>(Lcom/facebook/applinks/FacebookAppLinkResolver;Lbolts/Task$TaskCompletionSource;Ljava/util/Map;Ljava/util/HashSet;)V
    .locals 0
    .param p1, "this$0"    # Lcom/facebook/applinks/FacebookAppLinkResolver;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/facebook/applinks/FacebookAppLinkResolver$2;->this$0:Lcom/facebook/applinks/FacebookAppLinkResolver;

    iput-object p2, p0, Lcom/facebook/applinks/FacebookAppLinkResolver$2;->val$taskCompletionSource:Lbolts/Task$TaskCompletionSource;

    iput-object p3, p0, Lcom/facebook/applinks/FacebookAppLinkResolver$2;->val$appLinkResults:Ljava/util/Map;

    iput-object p4, p0, Lcom/facebook/applinks/FacebookAppLinkResolver$2;->val$urisToRequest:Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/GraphResponse;)V
    .locals 18
    .param p1, "response"    # Lcom/facebook/GraphResponse;

    .prologue
    .line 138
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v4

    .line 139
    .local v4, "error":Lcom/facebook/FacebookRequestError;
    if-eqz v4, :cond_0

    .line 140
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/facebook/applinks/FacebookAppLinkResolver$2;->val$taskCompletionSource:Lbolts/Task$TaskCompletionSource;

    invoke-virtual {v4}, Lcom/facebook/FacebookRequestError;->getException()Lcom/facebook/FacebookException;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lbolts/Task$TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    .line 189
    :goto_0
    return-void

    .line 144
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v7

    .line 145
    .local v7, "responseJson":Lorg/json/JSONObject;
    if-nez v7, :cond_1

    .line 146
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/facebook/applinks/FacebookAppLinkResolver$2;->val$taskCompletionSource:Lbolts/Task$TaskCompletionSource;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/applinks/FacebookAppLinkResolver$2;->val$appLinkResults:Ljava/util/Map;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lbolts/Task$TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    goto :goto_0

    .line 150
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/facebook/applinks/FacebookAppLinkResolver$2;->val$urisToRequest:Ljava/util/HashSet;

    invoke-virtual {v15}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_2
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/Uri;

    .line 151
    .local v11, "uri":Landroid/net/Uri;
    invoke-virtual {v11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    .line 152
    .local v12, "uriString":Ljava/lang/String;
    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 156
    const/4 v13, 0x0

    .line 158
    .local v13, "urlData":Lorg/json/JSONObject;
    :try_start_0
    invoke-virtual {v11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v15}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    .line 159
    const-string v15, "app_links"

    invoke-virtual {v13, v15}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 161
    .local v2, "appLinkData":Lorg/json/JSONObject;
    const-string v15, "android"

    .line 162
    invoke-virtual {v2, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 164
    .local v6, "rawTargets":Lorg/json/JSONArray;
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v10

    .line 165
    .local v10, "targetsCount":I
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 167
    .local v9, "targets":Ljava/util/List;, "Ljava/util/List<Lbolts/AppLink$Target;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    if-ge v5, v10, :cond_4

    .line 169
    invoke-virtual {v6, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    # invokes: Lcom/facebook/applinks/FacebookAppLinkResolver;->getAndroidTargetFromJson(Lorg/json/JSONObject;)Lbolts/AppLink$Target;
    invoke-static {v15}, Lcom/facebook/applinks/FacebookAppLinkResolver;->access$000(Lorg/json/JSONObject;)Lbolts/AppLink$Target;

    move-result-object v8

    .line 170
    .local v8, "target":Lbolts/AppLink$Target;
    if-eqz v8, :cond_3

    .line 171
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 175
    .end local v8    # "target":Lbolts/AppLink$Target;
    :cond_4
    # invokes: Lcom/facebook/applinks/FacebookAppLinkResolver;->getWebFallbackUriFromJson(Landroid/net/Uri;Lorg/json/JSONObject;)Landroid/net/Uri;
    invoke-static {v11, v2}, Lcom/facebook/applinks/FacebookAppLinkResolver;->access$100(Landroid/net/Uri;Lorg/json/JSONObject;)Landroid/net/Uri;

    move-result-object v14

    .line 176
    .local v14, "webFallbackUrl":Landroid/net/Uri;
    new-instance v1, Lbolts/AppLink;

    invoke-direct {v1, v11, v9, v14}, Lbolts/AppLink;-><init>(Landroid/net/Uri;Ljava/util/List;Landroid/net/Uri;)V

    .line 178
    .local v1, "appLink":Lbolts/AppLink;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/facebook/applinks/FacebookAppLinkResolver$2;->val$appLinkResults:Ljava/util/Map;

    invoke-interface {v15, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/facebook/applinks/FacebookAppLinkResolver$2;->this$0:Lcom/facebook/applinks/FacebookAppLinkResolver;

    # getter for: Lcom/facebook/applinks/FacebookAppLinkResolver;->cachedAppLinks:Ljava/util/HashMap;
    invoke-static {v15}, Lcom/facebook/applinks/FacebookAppLinkResolver;->access$200(Lcom/facebook/applinks/FacebookAppLinkResolver;)Ljava/util/HashMap;

    move-result-object v17

    monitor-enter v17
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/facebook/applinks/FacebookAppLinkResolver$2;->this$0:Lcom/facebook/applinks/FacebookAppLinkResolver;

    # getter for: Lcom/facebook/applinks/FacebookAppLinkResolver;->cachedAppLinks:Ljava/util/HashMap;
    invoke-static {v15}, Lcom/facebook/applinks/FacebookAppLinkResolver;->access$200(Lcom/facebook/applinks/FacebookAppLinkResolver;)Ljava/util/HashMap;

    move-result-object v15

    invoke-virtual {v15, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    monitor-exit v17

    goto :goto_1

    :catchall_0
    move-exception v15

    monitor-exit v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v15
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 182
    .end local v1    # "appLink":Lbolts/AppLink;
    .end local v2    # "appLinkData":Lorg/json/JSONObject;
    .end local v5    # "i":I
    .end local v6    # "rawTargets":Lorg/json/JSONArray;
    .end local v9    # "targets":Ljava/util/List;, "Ljava/util/List<Lbolts/AppLink$Target;>;"
    .end local v10    # "targetsCount":I
    .end local v14    # "webFallbackUrl":Landroid/net/Uri;
    :catch_0
    move-exception v3

    .line 184
    .local v3, "e":Lorg/json/JSONException;
    goto :goto_1

    .line 188
    .end local v3    # "e":Lorg/json/JSONException;
    .end local v11    # "uri":Landroid/net/Uri;
    .end local v12    # "uriString":Ljava/lang/String;
    .end local v13    # "urlData":Lorg/json/JSONObject;
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/facebook/applinks/FacebookAppLinkResolver$2;->val$taskCompletionSource:Lbolts/Task$TaskCompletionSource;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/applinks/FacebookAppLinkResolver$2;->val$appLinkResults:Ljava/util/Map;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lbolts/Task$TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
