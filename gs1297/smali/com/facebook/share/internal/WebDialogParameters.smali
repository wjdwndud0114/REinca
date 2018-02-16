.class public Lcom/facebook/share/internal/WebDialogParameters;
.super Ljava/lang/Object;
.source "WebDialogParameters.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lcom/facebook/share/model/AppGroupCreationContent;)Landroid/os/Bundle;
    .locals 5
    .param p0, "appGroupCreationContent"    # Lcom/facebook/share/model/AppGroupCreationContent;

    .prologue
    .line 54
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 56
    .local v1, "webParams":Landroid/os/Bundle;
    const-string v2, "name"

    .line 59
    invoke-virtual {p0}, Lcom/facebook/share/model/AppGroupCreationContent;->getName()Ljava/lang/String;

    move-result-object v3

    .line 56
    invoke-static {v1, v2, v3}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v2, "description"

    .line 64
    invoke-virtual {p0}, Lcom/facebook/share/model/AppGroupCreationContent;->getDescription()Ljava/lang/String;

    move-result-object v3

    .line 61
    invoke-static {v1, v2, v3}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lcom/facebook/share/model/AppGroupCreationContent;->getAppGroupPrivacy()Lcom/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;

    move-result-object v0

    .line 68
    .local v0, "privacy":Lcom/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;
    if-eqz v0, :cond_0

    .line 69
    const-string v2, "privacy"

    .line 72
    invoke-virtual {v0}, Lcom/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 69
    invoke-static {v1, v2, v3}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :cond_0
    return-object v1
.end method

.method public static create(Lcom/facebook/share/model/GameRequestContent;)Landroid/os/Bundle;
    .locals 4
    .param p0, "gameRequestContent"    # Lcom/facebook/share/model/GameRequestContent;

    .prologue
    .line 79
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 81
    .local v0, "webParams":Landroid/os/Bundle;
    const-string v1, "message"

    .line 84
    invoke-virtual {p0}, Lcom/facebook/share/model/GameRequestContent;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 81
    invoke-static {v0, v1, v2}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v1, "to"

    .line 88
    invoke-virtual {p0}, Lcom/facebook/share/model/GameRequestContent;->getRecipients()Ljava/util/List;

    move-result-object v2

    .line 85
    invoke-static {v0, v1, v2}, Lcom/facebook/internal/Utility;->putCommaSeparatedStringList(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/List;)V

    .line 89
    const-string v1, "title"

    .line 92
    invoke-virtual {p0}, Lcom/facebook/share/model/GameRequestContent;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 89
    invoke-static {v0, v1, v2}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v1, "data"

    .line 96
    invoke-virtual {p0}, Lcom/facebook/share/model/GameRequestContent;->getData()Ljava/lang/String;

    move-result-object v2

    .line 93
    invoke-static {v0, v1, v2}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Lcom/facebook/share/model/GameRequestContent;->getActionType()Lcom/facebook/share/model/GameRequestContent$ActionType;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 98
    const-string v1, "action_type"

    .line 101
    invoke-virtual {p0}, Lcom/facebook/share/model/GameRequestContent;->getActionType()Lcom/facebook/share/model/GameRequestContent$ActionType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/share/model/GameRequestContent$ActionType;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 98
    invoke-static {v0, v1, v2}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :cond_0
    const-string v1, "object_id"

    .line 106
    invoke-virtual {p0}, Lcom/facebook/share/model/GameRequestContent;->getObjectId()Ljava/lang/String;

    move-result-object v2

    .line 103
    invoke-static {v0, v1, v2}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Lcom/facebook/share/model/GameRequestContent;->getFilters()Lcom/facebook/share/model/GameRequestContent$Filters;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 108
    const-string v1, "filters"

    .line 111
    invoke-virtual {p0}, Lcom/facebook/share/model/GameRequestContent;->getFilters()Lcom/facebook/share/model/GameRequestContent$Filters;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/share/model/GameRequestContent$Filters;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 108
    invoke-static {v0, v1, v2}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :cond_1
    const-string v1, "suggestions"

    .line 116
    invoke-virtual {p0}, Lcom/facebook/share/model/GameRequestContent;->getSuggestions()Ljava/util/List;

    move-result-object v2

    .line 113
    invoke-static {v0, v1, v2}, Lcom/facebook/internal/Utility;->putCommaSeparatedStringList(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/List;)V

    .line 117
    return-object v0
.end method

.method public static create(Lcom/facebook/share/model/ShareLinkContent;)Landroid/os/Bundle;
    .locals 3
    .param p0, "shareLinkContent"    # Lcom/facebook/share/model/ShareLinkContent;

    .prologue
    .line 121
    invoke-static {p0}, Lcom/facebook/share/internal/WebDialogParameters;->createBaseParameters(Lcom/facebook/share/model/ShareContent;)Landroid/os/Bundle;

    move-result-object v0

    .line 122
    .local v0, "params":Landroid/os/Bundle;
    const-string v1, "href"

    .line 125
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareLinkContent;->getContentUrl()Landroid/net/Uri;

    move-result-object v2

    .line 122
    invoke-static {v0, v1, v2}, Lcom/facebook/internal/Utility;->putUri(Landroid/os/Bundle;Ljava/lang/String;Landroid/net/Uri;)V

    .line 127
    const-string v1, "quote"

    .line 130
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareLinkContent;->getQuote()Ljava/lang/String;

    move-result-object v2

    .line 127
    invoke-static {v0, v1, v2}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    return-object v0
.end method

.method public static create(Lcom/facebook/share/model/ShareOpenGraphContent;)Landroid/os/Bundle;
    .locals 5
    .param p0, "shareOpenGraphContent"    # Lcom/facebook/share/model/ShareOpenGraphContent;

    .prologue
    .line 136
    invoke-static {p0}, Lcom/facebook/share/internal/WebDialogParameters;->createBaseParameters(Lcom/facebook/share/model/ShareContent;)Landroid/os/Bundle;

    move-result-object v2

    .line 138
    .local v2, "params":Landroid/os/Bundle;
    const-string v3, "action_type"

    .line 141
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareOpenGraphContent;->getAction()Lcom/facebook/share/model/ShareOpenGraphAction;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/share/model/ShareOpenGraphAction;->getActionType()Ljava/lang/String;

    move-result-object v4

    .line 138
    invoke-static {v2, v3, v4}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    :try_start_0
    invoke-static {p0}, Lcom/facebook/share/internal/ShareInternalUtility;->toJSONObjectForWeb(Lcom/facebook/share/model/ShareOpenGraphContent;)Lorg/json/JSONObject;

    move-result-object v1

    .line 145
    .local v1, "ogJSON":Lorg/json/JSONObject;
    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/facebook/share/internal/ShareInternalUtility;->removeNamespacesFromOGJsonObject(Lorg/json/JSONObject;Z)Lorg/json/JSONObject;

    move-result-object v1

    .line 146
    if-eqz v1, :cond_0

    .line 147
    const-string v3, "action_properties"

    .line 150
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    .line 147
    invoke-static {v2, v3, v4}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :cond_0
    return-object v2

    .line 152
    .end local v1    # "ogJSON":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Lorg/json/JSONException;
    new-instance v3, Lcom/facebook/FacebookException;

    const-string v4, "Unable to serialize the ShareOpenGraphContent to JSON"

    invoke-direct {v3, v4, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static createBaseParameters(Lcom/facebook/share/model/ShareContent;)Landroid/os/Bundle;
    .locals 4
    .param p0, "shareContent"    # Lcom/facebook/share/model/ShareContent;

    .prologue
    .line 160
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 162
    .local v0, "params":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareContent;->getShareHashtag()Lcom/facebook/share/model/ShareHashtag;

    move-result-object v1

    .line 163
    .local v1, "shareHashtag":Lcom/facebook/share/model/ShareHashtag;
    if-eqz v1, :cond_0

    .line 164
    const-string v2, "hashtag"

    .line 167
    invoke-virtual {v1}, Lcom/facebook/share/model/ShareHashtag;->getHashtag()Ljava/lang/String;

    move-result-object v3

    .line 164
    invoke-static {v0, v2, v3}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    :cond_0
    return-object v0
.end method

.method public static createForFeed(Lcom/facebook/share/internal/ShareFeedContent;)Landroid/os/Bundle;
    .locals 3
    .param p0, "shareFeedContent"    # Lcom/facebook/share/internal/ShareFeedContent;

    .prologue
    .line 212
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 214
    .local v0, "webParams":Landroid/os/Bundle;
    const-string v1, "to"

    .line 217
    invoke-virtual {p0}, Lcom/facebook/share/internal/ShareFeedContent;->getToId()Ljava/lang/String;

    move-result-object v2

    .line 214
    invoke-static {v0, v1, v2}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const-string v1, "link"

    .line 222
    invoke-virtual {p0}, Lcom/facebook/share/internal/ShareFeedContent;->getLink()Ljava/lang/String;

    move-result-object v2

    .line 219
    invoke-static {v0, v1, v2}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const-string v1, "picture"

    .line 227
    invoke-virtual {p0}, Lcom/facebook/share/internal/ShareFeedContent;->getPicture()Ljava/lang/String;

    move-result-object v2

    .line 224
    invoke-static {v0, v1, v2}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const-string v1, "source"

    .line 232
    invoke-virtual {p0}, Lcom/facebook/share/internal/ShareFeedContent;->getMediaSource()Ljava/lang/String;

    move-result-object v2

    .line 229
    invoke-static {v0, v1, v2}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string v1, "name"

    .line 237
    invoke-virtual {p0}, Lcom/facebook/share/internal/ShareFeedContent;->getLinkName()Ljava/lang/String;

    move-result-object v2

    .line 234
    invoke-static {v0, v1, v2}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const-string v1, "caption"

    .line 242
    invoke-virtual {p0}, Lcom/facebook/share/internal/ShareFeedContent;->getLinkCaption()Ljava/lang/String;

    move-result-object v2

    .line 239
    invoke-static {v0, v1, v2}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const-string v1, "description"

    .line 247
    invoke-virtual {p0}, Lcom/facebook/share/internal/ShareFeedContent;->getLinkDescription()Ljava/lang/String;

    move-result-object v2

    .line 244
    invoke-static {v0, v1, v2}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    return-object v0
.end method

.method public static createForFeed(Lcom/facebook/share/model/ShareLinkContent;)Landroid/os/Bundle;
    .locals 4
    .param p0, "shareLinkContent"    # Lcom/facebook/share/model/ShareLinkContent;

    .prologue
    .line 174
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 176
    .local v1, "webParams":Landroid/os/Bundle;
    const-string v2, "name"

    .line 179
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareLinkContent;->getContentTitle()Ljava/lang/String;

    move-result-object v3

    .line 176
    invoke-static {v1, v2, v3}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const-string v2, "description"

    .line 184
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareLinkContent;->getContentDescription()Ljava/lang/String;

    move-result-object v3

    .line 181
    invoke-static {v1, v2, v3}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const-string v2, "link"

    .line 189
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareLinkContent;->getContentUrl()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/internal/Utility;->getUriString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 186
    invoke-static {v1, v2, v3}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string v2, "picture"

    .line 194
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareLinkContent;->getImageUrl()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/internal/Utility;->getUriString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 191
    invoke-static {v1, v2, v3}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string v2, "quote"

    .line 199
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareLinkContent;->getQuote()Ljava/lang/String;

    move-result-object v3

    .line 196
    invoke-static {v1, v2, v3}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareLinkContent;->getShareHashtag()Lcom/facebook/share/model/ShareHashtag;

    move-result-object v0

    .line 202
    .local v0, "shareHashtag":Lcom/facebook/share/model/ShareHashtag;
    if-eqz v0, :cond_0

    .line 203
    const-string v2, "hashtag"

    .line 206
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareLinkContent;->getShareHashtag()Lcom/facebook/share/model/ShareHashtag;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/share/model/ShareHashtag;->getHashtag()Ljava/lang/String;

    move-result-object v3

    .line 203
    invoke-static {v1, v2, v3}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    :cond_0
    return-object v1
.end method
