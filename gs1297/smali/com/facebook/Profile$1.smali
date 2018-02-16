.class final Lcom/facebook/Profile$1;
.super Ljava/lang/Object;
.source "Profile.java"

# interfaces
.implements Lcom/facebook/internal/Utility$GraphMeRequestWithCacheCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/Profile;->fetchProfileForCurrentAccessToken()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/facebook/FacebookException;)V
    .locals 0
    .param p1, "error"    # Lcom/facebook/FacebookException;

    .prologue
    .line 108
    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 8
    .param p1, "userInfo"    # Lorg/json/JSONObject;

    .prologue
    .line 90
    const-string v2, "id"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 91
    .local v1, "id":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 104
    :goto_0
    return-void

    .line 94
    :cond_0
    const-string v2, "link"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 95
    .local v7, "link":Ljava/lang/String;
    new-instance v0, Lcom/facebook/Profile;

    const-string v2, "first_name"

    .line 97
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "middle_name"

    .line 98
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "last_name"

    .line 99
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "name"

    .line 100
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v7, :cond_1

    .line 101
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    :goto_1
    invoke-direct/range {v0 .. v6}, Lcom/facebook/Profile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 103
    .local v0, "profile":Lcom/facebook/Profile;
    invoke-static {v0}, Lcom/facebook/Profile;->setCurrentProfile(Lcom/facebook/Profile;)V

    goto :goto_0

    .line 101
    .end local v0    # "profile":Lcom/facebook/Profile;
    :cond_1
    const/4 v6, 0x0

    goto :goto_1
.end method
