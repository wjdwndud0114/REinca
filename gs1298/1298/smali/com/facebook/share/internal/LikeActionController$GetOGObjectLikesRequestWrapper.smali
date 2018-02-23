.class Lcom/facebook/share/internal/LikeActionController$GetOGObjectLikesRequestWrapper;
.super Lcom/facebook/share/internal/LikeActionController$AbstractRequestWrapper;
.source "LikeActionController.java"

# interfaces
.implements Lcom/facebook/share/internal/LikeActionController$LikeRequestWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/internal/LikeActionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetOGObjectLikesRequestWrapper"
.end annotation


# instance fields
.field private final objectId:Ljava/lang/String;

.field private objectIsLiked:Z

.field private final objectType:Lcom/facebook/share/widget/LikeView$ObjectType;

.field final synthetic this$0:Lcom/facebook/share/internal/LikeActionController;

.field private unlikeToken:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;)V
    .locals 5
    .param p2, "objectId"    # Ljava/lang/String;
    .param p3, "objectType"    # Lcom/facebook/share/widget/LikeView$ObjectType;

    .prologue
    .line 1518
    iput-object p1, p0, Lcom/facebook/share/internal/LikeActionController$GetOGObjectLikesRequestWrapper;->this$0:Lcom/facebook/share/internal/LikeActionController;

    .line 1519
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/share/internal/LikeActionController$AbstractRequestWrapper;-><init>(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;)V

    .line 1513
    iget-object v1, p0, Lcom/facebook/share/internal/LikeActionController$GetOGObjectLikesRequestWrapper;->this$0:Lcom/facebook/share/internal/LikeActionController;

    # getter for: Lcom/facebook/share/internal/LikeActionController;->isObjectLiked:Z
    invoke-static {v1}, Lcom/facebook/share/internal/LikeActionController;->access$2500(Lcom/facebook/share/internal/LikeActionController;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/facebook/share/internal/LikeActionController$GetOGObjectLikesRequestWrapper;->objectIsLiked:Z

    .line 1520
    iput-object p2, p0, Lcom/facebook/share/internal/LikeActionController$GetOGObjectLikesRequestWrapper;->objectId:Ljava/lang/String;

    .line 1521
    iput-object p3, p0, Lcom/facebook/share/internal/LikeActionController$GetOGObjectLikesRequestWrapper;->objectType:Lcom/facebook/share/widget/LikeView$ObjectType;

    .line 1523
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1524
    .local v0, "requestParams":Landroid/os/Bundle;
    const-string v1, "fields"

    const-string v2, "id,application"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1525
    const-string v1, "object"

    iget-object v2, p0, Lcom/facebook/share/internal/LikeActionController$GetOGObjectLikesRequestWrapper;->objectId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1527
    new-instance v1, Lcom/facebook/GraphRequest;

    .line 1528
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v2

    const-string v3, "me/og.likes"

    sget-object v4, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;)V

    .line 1527
    invoke-virtual {p0, v1}, Lcom/facebook/share/internal/LikeActionController$GetOGObjectLikesRequestWrapper;->setRequest(Lcom/facebook/GraphRequest;)V

    .line 1532
    return-void
.end method


# virtual methods
.method public getUnlikeToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1576
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController$GetOGObjectLikesRequestWrapper;->unlikeToken:Ljava/lang/String;

    return-object v0
.end method

.method public isObjectLiked()Z
    .locals 1

    .prologue
    .line 1571
    iget-boolean v0, p0, Lcom/facebook/share/internal/LikeActionController$GetOGObjectLikesRequestWrapper;->objectIsLiked:Z

    return v0
.end method

.method protected processError(Lcom/facebook/FacebookRequestError;)V
    .locals 6
    .param p1, "error"    # Lcom/facebook/FacebookRequestError;

    .prologue
    .line 1560
    sget-object v0, Lcom/facebook/LoggingBehavior;->REQUESTS:Lcom/facebook/LoggingBehavior;

    .line 1561
    # getter for: Lcom/facebook/share/internal/LikeActionController;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/facebook/share/internal/LikeActionController;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error fetching like status for object \'%s\' with type \'%s\' : %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/facebook/share/internal/LikeActionController$GetOGObjectLikesRequestWrapper;->objectId:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/facebook/share/internal/LikeActionController$GetOGObjectLikesRequestWrapper;->objectType:Lcom/facebook/share/widget/LikeView$ObjectType;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p1, v3, v4

    .line 1560
    invoke-static {v0, v1, v2, v3}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1566
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController$GetOGObjectLikesRequestWrapper;->this$0:Lcom/facebook/share/internal/LikeActionController;

    const-string v1, "get_og_object_like"

    # invokes: Lcom/facebook/share/internal/LikeActionController;->logAppEventForError(Ljava/lang/String;Lcom/facebook/FacebookRequestError;)V
    invoke-static {v0, v1, p1}, Lcom/facebook/share/internal/LikeActionController;->access$2400(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;Lcom/facebook/FacebookRequestError;)V

    .line 1567
    return-void
.end method

.method protected processSuccess(Lcom/facebook/GraphResponse;)V
    .locals 7
    .param p1, "response"    # Lcom/facebook/GraphResponse;

    .prologue
    .line 1536
    .line 1537
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "data"

    .line 1536
    invoke-static {v5, v6}, Lcom/facebook/internal/Utility;->tryGetJSONArrayFromResponse(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 1539
    .local v3, "dataSet":Lorg/json/JSONArray;
    if-eqz v3, :cond_1

    .line 1540
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 1541
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 1542
    .local v2, "data":Lorg/json/JSONObject;
    if-eqz v2, :cond_0

    .line 1543
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/facebook/share/internal/LikeActionController$GetOGObjectLikesRequestWrapper;->objectIsLiked:Z

    .line 1544
    const-string v5, "application"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1545
    .local v1, "appData":Lorg/json/JSONObject;
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    .line 1546
    .local v0, "accessToken":Lcom/facebook/AccessToken;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 1549
    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getApplicationId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "id"

    .line 1550
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1548
    invoke-static {v5, v6}, Lcom/facebook/internal/Utility;->areObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1551
    const-string v5, "id"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/facebook/share/internal/LikeActionController$GetOGObjectLikesRequestWrapper;->unlikeToken:Ljava/lang/String;

    .line 1540
    .end local v0    # "accessToken":Lcom/facebook/AccessToken;
    .end local v1    # "appData":Lorg/json/JSONObject;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1556
    .end local v2    # "data":Lorg/json/JSONObject;
    .end local v4    # "i":I
    :cond_1
    return-void
.end method
