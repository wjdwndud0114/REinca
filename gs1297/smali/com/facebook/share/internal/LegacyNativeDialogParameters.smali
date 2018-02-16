.class public Lcom/facebook/share/internal/LegacyNativeDialogParameters;
.super Ljava/lang/Object;
.source "LegacyNativeDialogParameters.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static create(Lcom/facebook/share/model/ShareLinkContent;Z)Landroid/os/Bundle;
    .locals 3
    .param p0, "linkContent"    # Lcom/facebook/share/model/ShareLinkContent;
    .param p1, "dataErrorsFatal"    # Z

    .prologue
    .line 89
    invoke-static {p0, p1}, Lcom/facebook/share/internal/LegacyNativeDialogParameters;->createBaseParameters(Lcom/facebook/share/model/ShareContent;Z)Landroid/os/Bundle;

    move-result-object v0

    .line 91
    .local v0, "params":Landroid/os/Bundle;
    const-string v1, "com.facebook.platform.extra.TITLE"

    .line 92
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareLinkContent;->getContentTitle()Ljava/lang/String;

    move-result-object v2

    .line 91
    invoke-static {v0, v1, v2}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v1, "com.facebook.platform.extra.DESCRIPTION"

    .line 94
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareLinkContent;->getContentDescription()Ljava/lang/String;

    move-result-object v2

    .line 93
    invoke-static {v0, v1, v2}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v1, "com.facebook.platform.extra.IMAGE"

    invoke-virtual {p0}, Lcom/facebook/share/model/ShareLinkContent;->getImageUrl()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/internal/Utility;->putUri(Landroid/os/Bundle;Ljava/lang/String;Landroid/net/Uri;)V

    .line 97
    return-object v0
.end method

.method private static create(Lcom/facebook/share/model/ShareOpenGraphContent;Lorg/json/JSONObject;Z)Landroid/os/Bundle;
    .locals 3
    .param p0, "openGraphContent"    # Lcom/facebook/share/model/ShareOpenGraphContent;
    .param p1, "openGraphActionJSON"    # Lorg/json/JSONObject;
    .param p2, "dataErrorsFatal"    # Z

    .prologue
    .line 120
    invoke-static {p0, p2}, Lcom/facebook/share/internal/LegacyNativeDialogParameters;->createBaseParameters(Lcom/facebook/share/model/ShareContent;Z)Landroid/os/Bundle;

    move-result-object v0

    .line 122
    .local v0, "params":Landroid/os/Bundle;
    const-string v1, "com.facebook.platform.extra.PREVIEW_PROPERTY_NAME"

    .line 125
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareOpenGraphContent;->getPreviewPropertyName()Ljava/lang/String;

    move-result-object v2

    .line 122
    invoke-static {v0, v1, v2}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string v1, "com.facebook.platform.extra.ACTION_TYPE"

    .line 129
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareOpenGraphContent;->getAction()Lcom/facebook/share/model/ShareOpenGraphAction;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/share/model/ShareOpenGraphAction;->getActionType()Ljava/lang/String;

    move-result-object v2

    .line 126
    invoke-static {v0, v1, v2}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v1, "com.facebook.platform.extra.ACTION"

    .line 134
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 131
    invoke-static {v0, v1, v2}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    return-object v0
.end method

.method private static create(Lcom/facebook/share/model/SharePhotoContent;Ljava/util/List;Z)Landroid/os/Bundle;
    .locals 3
    .param p0, "photoContent"    # Lcom/facebook/share/model/SharePhotoContent;
    .param p2, "dataErrorsFatal"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/share/model/SharePhotoContent;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .prologue
    .line 104
    .local p1, "imageUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0, p2}, Lcom/facebook/share/internal/LegacyNativeDialogParameters;->createBaseParameters(Lcom/facebook/share/model/ShareContent;Z)Landroid/os/Bundle;

    move-result-object v0

    .line 106
    .local v0, "params":Landroid/os/Bundle;
    const-string v1, "com.facebook.platform.extra.PHOTOS"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 108
    return-object v0
.end method

.method private static create(Lcom/facebook/share/model/ShareVideoContent;Z)Landroid/os/Bundle;
    .locals 1
    .param p0, "videoContent"    # Lcom/facebook/share/model/ShareVideoContent;
    .param p1, "dataErrorsFatal"    # Z

    .prologue
    .line 113
    const/4 v0, 0x0

    return-object v0
.end method

.method public static create(Ljava/util/UUID;Lcom/facebook/share/model/ShareContent;Z)Landroid/os/Bundle;
    .locals 11
    .param p0, "callId"    # Ljava/util/UUID;
    .param p1, "shareContent"    # Lcom/facebook/share/model/ShareContent;
    .param p2, "shouldFailOnDataError"    # Z

    .prologue
    .line 54
    const-string v8, "shareContent"

    invoke-static {p1, v8}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    const-string v8, "callId"

    invoke-static {p0, v8}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    const/4 v2, 0x0

    .line 58
    .local v2, "nativeParams":Landroid/os/Bundle;
    instance-of v8, p1, Lcom/facebook/share/model/ShareLinkContent;

    if-eqz v8, :cond_1

    move-object v1, p1

    .line 59
    check-cast v1, Lcom/facebook/share/model/ShareLinkContent;

    .line 60
    .local v1, "linkContent":Lcom/facebook/share/model/ShareLinkContent;
    invoke-static {v1, p2}, Lcom/facebook/share/internal/LegacyNativeDialogParameters;->create(Lcom/facebook/share/model/ShareLinkContent;Z)Landroid/os/Bundle;

    move-result-object v2

    .line 85
    .end local v1    # "linkContent":Lcom/facebook/share/model/ShareLinkContent;
    :cond_0
    :goto_0
    return-object v2

    .line 61
    :cond_1
    instance-of v8, p1, Lcom/facebook/share/model/SharePhotoContent;

    if-eqz v8, :cond_2

    move-object v5, p1

    .line 62
    check-cast v5, Lcom/facebook/share/model/SharePhotoContent;

    .line 63
    .local v5, "photoContent":Lcom/facebook/share/model/SharePhotoContent;
    invoke-static {v5, p0}, Lcom/facebook/share/internal/ShareInternalUtility;->getPhotoUrls(Lcom/facebook/share/model/SharePhotoContent;Ljava/util/UUID;)Ljava/util/List;

    move-result-object v6

    .line 67
    .local v6, "photoUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v5, v6, p2}, Lcom/facebook/share/internal/LegacyNativeDialogParameters;->create(Lcom/facebook/share/model/SharePhotoContent;Ljava/util/List;Z)Landroid/os/Bundle;

    move-result-object v2

    .line 68
    goto :goto_0

    .end local v5    # "photoContent":Lcom/facebook/share/model/SharePhotoContent;
    .end local v6    # "photoUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    instance-of v8, p1, Lcom/facebook/share/model/ShareVideoContent;

    if-eqz v8, :cond_3

    move-object v7, p1

    .line 69
    check-cast v7, Lcom/facebook/share/model/ShareVideoContent;

    .line 70
    .local v7, "videoContent":Lcom/facebook/share/model/ShareVideoContent;
    invoke-static {v7, p2}, Lcom/facebook/share/internal/LegacyNativeDialogParameters;->create(Lcom/facebook/share/model/ShareVideoContent;Z)Landroid/os/Bundle;

    move-result-object v2

    .line 71
    goto :goto_0

    .end local v7    # "videoContent":Lcom/facebook/share/model/ShareVideoContent;
    :cond_3
    instance-of v8, p1, Lcom/facebook/share/model/ShareOpenGraphContent;

    if-eqz v8, :cond_0

    move-object v4, p1

    .line 72
    check-cast v4, Lcom/facebook/share/model/ShareOpenGraphContent;

    .line 74
    .local v4, "openGraphContent":Lcom/facebook/share/model/ShareOpenGraphContent;
    :try_start_0
    invoke-static {p0, v4}, Lcom/facebook/share/internal/ShareInternalUtility;->toJSONObjectForCall(Ljava/util/UUID;Lcom/facebook/share/model/ShareOpenGraphContent;)Lorg/json/JSONObject;

    move-result-object v3

    .line 77
    .local v3, "openGraphActionJSON":Lorg/json/JSONObject;
    invoke-static {v4, v3, p2}, Lcom/facebook/share/internal/LegacyNativeDialogParameters;->create(Lcom/facebook/share/model/ShareOpenGraphContent;Lorg/json/JSONObject;Z)Landroid/os/Bundle;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 78
    .end local v3    # "openGraphActionJSON":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Lorg/json/JSONException;
    new-instance v8, Lcom/facebook/FacebookException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to create a JSON Object from the provided ShareOpenGraphContent: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 81
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method private static createBaseParameters(Lcom/facebook/share/model/ShareContent;Z)Landroid/os/Bundle;
    .locals 4
    .param p0, "content"    # Lcom/facebook/share/model/ShareContent;
    .param p1, "dataErrorsFatal"    # Z

    .prologue
    .line 140
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 142
    .local v0, "params":Landroid/os/Bundle;
    const-string v2, "com.facebook.platform.extra.LINK"

    invoke-virtual {p0}, Lcom/facebook/share/model/ShareContent;->getContentUrl()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/facebook/internal/Utility;->putUri(Landroid/os/Bundle;Ljava/lang/String;Landroid/net/Uri;)V

    .line 143
    const-string v2, "com.facebook.platform.extra.PLACE"

    invoke-virtual {p0}, Lcom/facebook/share/model/ShareContent;->getPlaceId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string v2, "com.facebook.platform.extra.REF"

    invoke-virtual {p0}, Lcom/facebook/share/model/ShareContent;->getRef()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string v2, "com.facebook.platform.extra.DATA_FAILURES_FATAL"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 148
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareContent;->getPeopleIds()Ljava/util/List;

    move-result-object v1

    .line 149
    .local v1, "peopleIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 150
    const-string v2, "com.facebook.platform.extra.FRIENDS"

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 155
    :cond_0
    return-object v0
.end method
