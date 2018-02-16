.class public Lcom/facebook/share/internal/NativeDialogParameters;
.super Ljava/lang/Object;
.source "NativeDialogParameters.java"


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
    .line 99
    invoke-static {p0, p1}, Lcom/facebook/share/internal/NativeDialogParameters;->createBaseParameters(Lcom/facebook/share/model/ShareContent;Z)Landroid/os/Bundle;

    move-result-object v0

    .line 101
    .local v0, "params":Landroid/os/Bundle;
    const-string v1, "TITLE"

    invoke-virtual {p0}, Lcom/facebook/share/model/ShareLinkContent;->getContentTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v1, "DESCRIPTION"

    .line 103
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareLinkContent;->getContentDescription()Ljava/lang/String;

    move-result-object v2

    .line 102
    invoke-static {v0, v1, v2}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v1, "IMAGE"

    invoke-virtual {p0}, Lcom/facebook/share/model/ShareLinkContent;->getImageUrl()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/internal/Utility;->putUri(Landroid/os/Bundle;Ljava/lang/String;Landroid/net/Uri;)V

    .line 105
    const-string v1, "QUOTE"

    invoke-virtual {p0}, Lcom/facebook/share/model/ShareLinkContent;->getQuote()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    return-object v0
.end method

.method private static create(Lcom/facebook/share/model/ShareMediaContent;Ljava/util/List;Z)Landroid/os/Bundle;
    .locals 3
    .param p0, "mediaContent"    # Lcom/facebook/share/model/ShareMediaContent;
    .param p2, "dataErrorsFatal"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/share/model/ShareMediaContent;",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;Z)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .prologue
    .line 139
    .local p1, "mediaInfos":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    invoke-static {p0, p2}, Lcom/facebook/share/internal/NativeDialogParameters;->createBaseParameters(Lcom/facebook/share/model/ShareContent;Z)Landroid/os/Bundle;

    move-result-object v0

    .line 141
    .local v0, "params":Landroid/os/Bundle;
    const-string v1, "MEDIA"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 143
    return-object v0
.end method

.method private static create(Lcom/facebook/share/model/ShareOpenGraphContent;Lorg/json/JSONObject;Z)Landroid/os/Bundle;
    .locals 4
    .param p0, "openGraphContent"    # Lcom/facebook/share/model/ShareOpenGraphContent;
    .param p1, "openGraphActionJSON"    # Lorg/json/JSONObject;
    .param p2, "dataErrorsFatal"    # Z

    .prologue
    .line 150
    invoke-static {p0, p2}, Lcom/facebook/share/internal/NativeDialogParameters;->createBaseParameters(Lcom/facebook/share/model/ShareContent;Z)Landroid/os/Bundle;

    move-result-object v0

    .line 154
    .local v0, "params":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareOpenGraphContent;->getPreviewPropertyName()Ljava/lang/String;

    move-result-object v2

    .line 153
    invoke-static {v2}, Lcom/facebook/share/internal/ShareInternalUtility;->getFieldNameAndNamespaceFromFullName(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v2

    iget-object v1, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 156
    .local v1, "previewProperty":Ljava/lang/String;
    const-string v2, "PREVIEW_PROPERTY_NAME"

    invoke-static {v0, v2, v1}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string v2, "ACTION_TYPE"

    .line 163
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareOpenGraphContent;->getAction()Lcom/facebook/share/model/ShareOpenGraphAction;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/share/model/ShareOpenGraphAction;->getActionType()Ljava/lang/String;

    move-result-object v3

    .line 160
    invoke-static {v0, v2, v3}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string v2, "ACTION"

    .line 168
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    .line 165
    invoke-static {v0, v2, v3}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 170
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
    .line 114
    .local p1, "imageUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0, p2}, Lcom/facebook/share/internal/NativeDialogParameters;->createBaseParameters(Lcom/facebook/share/model/ShareContent;Z)Landroid/os/Bundle;

    move-result-object v0

    .line 116
    .local v0, "params":Landroid/os/Bundle;
    const-string v1, "PHOTOS"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 118
    return-object v0
.end method

.method private static create(Lcom/facebook/share/model/ShareVideoContent;Ljava/lang/String;Z)Landroid/os/Bundle;
    .locals 3
    .param p0, "videoContent"    # Lcom/facebook/share/model/ShareVideoContent;
    .param p1, "videoUrl"    # Ljava/lang/String;
    .param p2, "dataErrorsFatal"    # Z

    .prologue
    .line 125
    invoke-static {p0, p2}, Lcom/facebook/share/internal/NativeDialogParameters;->createBaseParameters(Lcom/facebook/share/model/ShareContent;Z)Landroid/os/Bundle;

    move-result-object v0

    .line 127
    .local v0, "params":Landroid/os/Bundle;
    const-string v1, "TITLE"

    invoke-virtual {p0}, Lcom/facebook/share/model/ShareVideoContent;->getContentTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v1, "DESCRIPTION"

    .line 129
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareVideoContent;->getContentDescription()Ljava/lang/String;

    move-result-object v2

    .line 128
    invoke-static {v0, v1, v2}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string v1, "VIDEO"

    invoke-static {v0, v1, p1}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    return-object v0
.end method

.method public static create(Ljava/util/UUID;Lcom/facebook/share/model/ShareContent;Z)Landroid/os/Bundle;
    .locals 15
    .param p0, "callId"    # Ljava/util/UUID;
    .param p1, "shareContent"    # Lcom/facebook/share/model/ShareContent;
    .param p2, "shouldFailOnDataError"    # Z

    .prologue
    .line 54
    const-string v12, "shareContent"

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    const-string v12, "callId"

    invoke-static {p0, v12}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    const/4 v5, 0x0

    .line 58
    .local v5, "nativeParams":Landroid/os/Bundle;
    move-object/from16 v0, p1

    instance-of v12, v0, Lcom/facebook/share/model/ShareLinkContent;

    if-eqz v12, :cond_1

    move-object/from16 v2, p1

    .line 59
    check-cast v2, Lcom/facebook/share/model/ShareLinkContent;

    .line 60
    .local v2, "linkContent":Lcom/facebook/share/model/ShareLinkContent;
    move/from16 v0, p2

    invoke-static {v2, v0}, Lcom/facebook/share/internal/NativeDialogParameters;->create(Lcom/facebook/share/model/ShareLinkContent;Z)Landroid/os/Bundle;

    move-result-object v5

    .line 95
    .end local v2    # "linkContent":Lcom/facebook/share/model/ShareLinkContent;
    :cond_0
    :goto_0
    return-object v5

    .line 61
    :cond_1
    move-object/from16 v0, p1

    instance-of v12, v0, Lcom/facebook/share/model/SharePhotoContent;

    if-eqz v12, :cond_2

    move-object/from16 v8, p1

    .line 62
    check-cast v8, Lcom/facebook/share/model/SharePhotoContent;

    .line 63
    .local v8, "photoContent":Lcom/facebook/share/model/SharePhotoContent;
    invoke-static {v8, p0}, Lcom/facebook/share/internal/ShareInternalUtility;->getPhotoUrls(Lcom/facebook/share/model/SharePhotoContent;Ljava/util/UUID;)Ljava/util/List;

    move-result-object v9

    .line 67
    .local v9, "photoUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move/from16 v0, p2

    invoke-static {v8, v9, v0}, Lcom/facebook/share/internal/NativeDialogParameters;->create(Lcom/facebook/share/model/SharePhotoContent;Ljava/util/List;Z)Landroid/os/Bundle;

    move-result-object v5

    .line 68
    goto :goto_0

    .end local v8    # "photoContent":Lcom/facebook/share/model/SharePhotoContent;
    .end local v9    # "photoUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    move-object/from16 v0, p1

    instance-of v12, v0, Lcom/facebook/share/model/ShareVideoContent;

    if-eqz v12, :cond_3

    move-object/from16 v10, p1

    .line 69
    check-cast v10, Lcom/facebook/share/model/ShareVideoContent;

    .line 70
    .local v10, "videoContent":Lcom/facebook/share/model/ShareVideoContent;
    invoke-static {v10, p0}, Lcom/facebook/share/internal/ShareInternalUtility;->getVideoUrl(Lcom/facebook/share/model/ShareVideoContent;Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v11

    .line 72
    .local v11, "videoUrl":Ljava/lang/String;
    move/from16 v0, p2

    invoke-static {v10, v11, v0}, Lcom/facebook/share/internal/NativeDialogParameters;->create(Lcom/facebook/share/model/ShareVideoContent;Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v5

    .line 73
    goto :goto_0

    .end local v10    # "videoContent":Lcom/facebook/share/model/ShareVideoContent;
    .end local v11    # "videoUrl":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p1

    instance-of v12, v0, Lcom/facebook/share/model/ShareOpenGraphContent;

    if-eqz v12, :cond_4

    move-object/from16 v7, p1

    .line 74
    check-cast v7, Lcom/facebook/share/model/ShareOpenGraphContent;

    .line 76
    .local v7, "openGraphContent":Lcom/facebook/share/model/ShareOpenGraphContent;
    :try_start_0
    invoke-static {p0, v7}, Lcom/facebook/share/internal/ShareInternalUtility;->toJSONObjectForCall(Ljava/util/UUID;Lcom/facebook/share/model/ShareOpenGraphContent;)Lorg/json/JSONObject;

    move-result-object v6

    .line 78
    .local v6, "openGraphActionJSON":Lorg/json/JSONObject;
    const/4 v12, 0x0

    invoke-static {v6, v12}, Lcom/facebook/share/internal/ShareInternalUtility;->removeNamespacesFromOGJsonObject(Lorg/json/JSONObject;Z)Lorg/json/JSONObject;

    move-result-object v6

    .line 80
    move/from16 v0, p2

    invoke-static {v7, v6, v0}, Lcom/facebook/share/internal/NativeDialogParameters;->create(Lcom/facebook/share/model/ShareOpenGraphContent;Lorg/json/JSONObject;Z)Landroid/os/Bundle;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_0

    .line 81
    .end local v6    # "openGraphActionJSON":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 82
    .local v1, "e":Lorg/json/JSONException;
    new-instance v12, Lcom/facebook/FacebookException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unable to create a JSON Object from the provided ShareOpenGraphContent: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 84
    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 86
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v7    # "openGraphContent":Lcom/facebook/share/model/ShareOpenGraphContent;
    :cond_4
    move-object/from16 v0, p1

    instance-of v12, v0, Lcom/facebook/share/model/ShareMediaContent;

    if-eqz v12, :cond_0

    move-object/from16 v3, p1

    .line 87
    check-cast v3, Lcom/facebook/share/model/ShareMediaContent;

    .line 88
    .local v3, "mediaContent":Lcom/facebook/share/model/ShareMediaContent;
    invoke-static {v3, p0}, Lcom/facebook/share/internal/ShareInternalUtility;->getMediaInfos(Lcom/facebook/share/model/ShareMediaContent;Ljava/util/UUID;)Ljava/util/List;

    move-result-object v4

    .line 92
    .local v4, "mediaInfos":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    move/from16 v0, p2

    invoke-static {v3, v4, v0}, Lcom/facebook/share/internal/NativeDialogParameters;->create(Lcom/facebook/share/model/ShareMediaContent;Ljava/util/List;Z)Landroid/os/Bundle;

    move-result-object v5

    goto :goto_0
.end method

.method private static createBaseParameters(Lcom/facebook/share/model/ShareContent;Z)Landroid/os/Bundle;
    .locals 5
    .param p0, "content"    # Lcom/facebook/share/model/ShareContent;
    .param p1, "dataErrorsFatal"    # Z

    .prologue
    .line 174
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 176
    .local v0, "params":Landroid/os/Bundle;
    const-string v3, "LINK"

    invoke-virtual {p0}, Lcom/facebook/share/model/ShareContent;->getContentUrl()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/facebook/internal/Utility;->putUri(Landroid/os/Bundle;Ljava/lang/String;Landroid/net/Uri;)V

    .line 177
    const-string v3, "PLACE"

    invoke-virtual {p0}, Lcom/facebook/share/model/ShareContent;->getPlaceId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string v3, "REF"

    invoke-virtual {p0}, Lcom/facebook/share/model/ShareContent;->getRef()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const-string v3, "DATA_FAILURES_FATAL"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 182
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareContent;->getPeopleIds()Ljava/util/List;

    move-result-object v1

    .line 183
    .local v1, "peopleIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 184
    const-string v3, "FRIENDS"

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 189
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareContent;->getShareHashtag()Lcom/facebook/share/model/ShareHashtag;

    move-result-object v2

    .line 190
    .local v2, "shareHashtag":Lcom/facebook/share/model/ShareHashtag;
    if-eqz v2, :cond_1

    .line 191
    const-string v3, "HASHTAG"

    invoke-virtual {v2}, Lcom/facebook/share/model/ShareHashtag;->getHashtag()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    :cond_1
    return-object v0
.end method
