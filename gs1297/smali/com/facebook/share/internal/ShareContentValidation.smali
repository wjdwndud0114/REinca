.class public Lcom/facebook/share/internal/ShareContentValidation;
.super Ljava/lang/Object;
.source "ShareContentValidation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/share/internal/ShareContentValidation$Validator;,
        Lcom/facebook/share/internal/ShareContentValidation$ApiValidator;,
        Lcom/facebook/share/internal/ShareContentValidation$WebShareValidator;
    }
.end annotation


# static fields
.field private static ApiValidator:Lcom/facebook/share/internal/ShareContentValidation$Validator;

.field private static DefaultValidator:Lcom/facebook/share/internal/ShareContentValidation$Validator;

.field private static WebShareValidator:Lcom/facebook/share/internal/ShareContentValidation$Validator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcom/facebook/share/model/ShareOpenGraphAction;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .locals 0
    .param p0, "x0"    # Lcom/facebook/share/model/ShareOpenGraphAction;
    .param p1, "x1"    # Lcom/facebook/share/internal/ShareContentValidation$Validator;

    .prologue
    .line 52
    invoke-static {p0, p1}, Lcom/facebook/share/internal/ShareContentValidation;->validateOpenGraphAction(Lcom/facebook/share/model/ShareOpenGraphAction;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/facebook/share/model/ShareOpenGraphObject;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .locals 0
    .param p0, "x0"    # Lcom/facebook/share/model/ShareOpenGraphObject;
    .param p1, "x1"    # Lcom/facebook/share/internal/ShareContentValidation$Validator;

    .prologue
    .line 52
    invoke-static {p0, p1}, Lcom/facebook/share/internal/ShareContentValidation;->validateOpenGraphObject(Lcom/facebook/share/model/ShareOpenGraphObject;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/facebook/share/model/ShareOpenGraphValueContainer;Lcom/facebook/share/internal/ShareContentValidation$Validator;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/facebook/share/model/ShareOpenGraphValueContainer;
    .param p1, "x1"    # Lcom/facebook/share/internal/ShareContentValidation$Validator;
    .param p2, "x2"    # Z

    .prologue
    .line 52
    invoke-static {p0, p1, p2}, Lcom/facebook/share/internal/ShareContentValidation;->validateOpenGraphValueContainer(Lcom/facebook/share/model/ShareOpenGraphValueContainer;Lcom/facebook/share/internal/ShareContentValidation$Validator;Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/facebook/share/model/SharePhoto;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .locals 0
    .param p0, "x0"    # Lcom/facebook/share/model/SharePhoto;
    .param p1, "x1"    # Lcom/facebook/share/internal/ShareContentValidation$Validator;

    .prologue
    .line 52
    invoke-static {p0, p1}, Lcom/facebook/share/internal/ShareContentValidation;->validatePhotoForNativeDialog(Lcom/facebook/share/model/SharePhoto;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/facebook/share/model/ShareVideo;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .locals 0
    .param p0, "x0"    # Lcom/facebook/share/model/ShareVideo;
    .param p1, "x1"    # Lcom/facebook/share/internal/ShareContentValidation$Validator;

    .prologue
    .line 52
    invoke-static {p0, p1}, Lcom/facebook/share/internal/ShareContentValidation;->validateVideo(Lcom/facebook/share/model/ShareVideo;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    return-void
.end method

.method static synthetic access$300(Lcom/facebook/share/model/SharePhoto;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .locals 0
    .param p0, "x0"    # Lcom/facebook/share/model/SharePhoto;
    .param p1, "x1"    # Lcom/facebook/share/internal/ShareContentValidation$Validator;

    .prologue
    .line 52
    invoke-static {p0, p1}, Lcom/facebook/share/internal/ShareContentValidation;->validatePhotoForWebDialog(Lcom/facebook/share/model/SharePhoto;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    return-void
.end method

.method static synthetic access$400(Lcom/facebook/share/model/SharePhoto;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .locals 0
    .param p0, "x0"    # Lcom/facebook/share/model/SharePhoto;
    .param p1, "x1"    # Lcom/facebook/share/internal/ShareContentValidation$Validator;

    .prologue
    .line 52
    invoke-static {p0, p1}, Lcom/facebook/share/internal/ShareContentValidation;->validatePhotoForApi(Lcom/facebook/share/model/SharePhoto;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    return-void
.end method

.method static synthetic access$500(Lcom/facebook/share/model/ShareLinkContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .locals 0
    .param p0, "x0"    # Lcom/facebook/share/model/ShareLinkContent;
    .param p1, "x1"    # Lcom/facebook/share/internal/ShareContentValidation$Validator;

    .prologue
    .line 52
    invoke-static {p0, p1}, Lcom/facebook/share/internal/ShareContentValidation;->validateLinkContent(Lcom/facebook/share/model/ShareLinkContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    return-void
.end method

.method static synthetic access$600(Lcom/facebook/share/model/SharePhotoContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .locals 0
    .param p0, "x0"    # Lcom/facebook/share/model/SharePhotoContent;
    .param p1, "x1"    # Lcom/facebook/share/internal/ShareContentValidation$Validator;

    .prologue
    .line 52
    invoke-static {p0, p1}, Lcom/facebook/share/internal/ShareContentValidation;->validatePhotoContent(Lcom/facebook/share/model/SharePhotoContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    return-void
.end method

.method static synthetic access$700(Lcom/facebook/share/model/ShareVideoContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .locals 0
    .param p0, "x0"    # Lcom/facebook/share/model/ShareVideoContent;
    .param p1, "x1"    # Lcom/facebook/share/internal/ShareContentValidation$Validator;

    .prologue
    .line 52
    invoke-static {p0, p1}, Lcom/facebook/share/internal/ShareContentValidation;->validateVideoContent(Lcom/facebook/share/model/ShareVideoContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    return-void
.end method

.method static synthetic access$800(Lcom/facebook/share/model/ShareMediaContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .locals 0
    .param p0, "x0"    # Lcom/facebook/share/model/ShareMediaContent;
    .param p1, "x1"    # Lcom/facebook/share/internal/ShareContentValidation$Validator;

    .prologue
    .line 52
    invoke-static {p0, p1}, Lcom/facebook/share/internal/ShareContentValidation;->validateMediaContent(Lcom/facebook/share/model/ShareMediaContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    return-void
.end method

.method static synthetic access$900(Lcom/facebook/share/model/ShareOpenGraphContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .locals 0
    .param p0, "x0"    # Lcom/facebook/share/model/ShareOpenGraphContent;
    .param p1, "x1"    # Lcom/facebook/share/internal/ShareContentValidation$Validator;

    .prologue
    .line 52
    invoke-static {p0, p1}, Lcom/facebook/share/internal/ShareContentValidation;->validateOpenGraphContent(Lcom/facebook/share/model/ShareOpenGraphContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    return-void
.end method

.method private static getApiValidator()Lcom/facebook/share/internal/ShareContentValidation$Validator;
    .locals 2

    .prologue
    .line 82
    sget-object v0, Lcom/facebook/share/internal/ShareContentValidation;->ApiValidator:Lcom/facebook/share/internal/ShareContentValidation$Validator;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Lcom/facebook/share/internal/ShareContentValidation$ApiValidator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/share/internal/ShareContentValidation$ApiValidator;-><init>(Lcom/facebook/share/internal/ShareContentValidation$1;)V

    sput-object v0, Lcom/facebook/share/internal/ShareContentValidation;->ApiValidator:Lcom/facebook/share/internal/ShareContentValidation$Validator;

    .line 85
    :cond_0
    sget-object v0, Lcom/facebook/share/internal/ShareContentValidation;->ApiValidator:Lcom/facebook/share/internal/ShareContentValidation$Validator;

    return-object v0
.end method

.method private static getDefaultValidator()Lcom/facebook/share/internal/ShareContentValidation$Validator;
    .locals 2

    .prologue
    .line 75
    sget-object v0, Lcom/facebook/share/internal/ShareContentValidation;->DefaultValidator:Lcom/facebook/share/internal/ShareContentValidation$Validator;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lcom/facebook/share/internal/ShareContentValidation$Validator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/share/internal/ShareContentValidation$Validator;-><init>(Lcom/facebook/share/internal/ShareContentValidation$1;)V

    sput-object v0, Lcom/facebook/share/internal/ShareContentValidation;->DefaultValidator:Lcom/facebook/share/internal/ShareContentValidation$Validator;

    .line 78
    :cond_0
    sget-object v0, Lcom/facebook/share/internal/ShareContentValidation;->DefaultValidator:Lcom/facebook/share/internal/ShareContentValidation$Validator;

    return-object v0
.end method

.method private static getWebShareValidator()Lcom/facebook/share/internal/ShareContentValidation$Validator;
    .locals 2

    .prologue
    .line 89
    sget-object v0, Lcom/facebook/share/internal/ShareContentValidation;->WebShareValidator:Lcom/facebook/share/internal/ShareContentValidation$Validator;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Lcom/facebook/share/internal/ShareContentValidation$WebShareValidator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/share/internal/ShareContentValidation$WebShareValidator;-><init>(Lcom/facebook/share/internal/ShareContentValidation$1;)V

    sput-object v0, Lcom/facebook/share/internal/ShareContentValidation;->WebShareValidator:Lcom/facebook/share/internal/ShareContentValidation$Validator;

    .line 92
    :cond_0
    sget-object v0, Lcom/facebook/share/internal/ShareContentValidation;->WebShareValidator:Lcom/facebook/share/internal/ShareContentValidation$Validator;

    return-object v0
.end method

.method private static validate(Lcom/facebook/share/model/ShareContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .locals 2
    .param p0, "content"    # Lcom/facebook/share/model/ShareContent;
    .param p1, "validator"    # Lcom/facebook/share/internal/ShareContentValidation$Validator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/FacebookException;
        }
    .end annotation

    .prologue
    .line 97
    if-nez p0, :cond_0

    .line 98
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Must provide non-null content to share"

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_0
    instance-of v0, p0, Lcom/facebook/share/model/ShareLinkContent;

    if-eqz v0, :cond_2

    .line 102
    check-cast p0, Lcom/facebook/share/model/ShareLinkContent;

    .end local p0    # "content":Lcom/facebook/share/model/ShareContent;
    invoke-virtual {p1, p0}, Lcom/facebook/share/internal/ShareContentValidation$Validator;->validate(Lcom/facebook/share/model/ShareLinkContent;)V

    .line 112
    :cond_1
    :goto_0
    return-void

    .line 103
    .restart local p0    # "content":Lcom/facebook/share/model/ShareContent;
    :cond_2
    instance-of v0, p0, Lcom/facebook/share/model/SharePhotoContent;

    if-eqz v0, :cond_3

    .line 104
    check-cast p0, Lcom/facebook/share/model/SharePhotoContent;

    .end local p0    # "content":Lcom/facebook/share/model/ShareContent;
    invoke-virtual {p1, p0}, Lcom/facebook/share/internal/ShareContentValidation$Validator;->validate(Lcom/facebook/share/model/SharePhotoContent;)V

    goto :goto_0

    .line 105
    .restart local p0    # "content":Lcom/facebook/share/model/ShareContent;
    :cond_3
    instance-of v0, p0, Lcom/facebook/share/model/ShareVideoContent;

    if-eqz v0, :cond_4

    .line 106
    check-cast p0, Lcom/facebook/share/model/ShareVideoContent;

    .end local p0    # "content":Lcom/facebook/share/model/ShareContent;
    invoke-virtual {p1, p0}, Lcom/facebook/share/internal/ShareContentValidation$Validator;->validate(Lcom/facebook/share/model/ShareVideoContent;)V

    goto :goto_0

    .line 107
    .restart local p0    # "content":Lcom/facebook/share/model/ShareContent;
    :cond_4
    instance-of v0, p0, Lcom/facebook/share/model/ShareOpenGraphContent;

    if-eqz v0, :cond_5

    .line 108
    check-cast p0, Lcom/facebook/share/model/ShareOpenGraphContent;

    .end local p0    # "content":Lcom/facebook/share/model/ShareContent;
    invoke-virtual {p1, p0}, Lcom/facebook/share/internal/ShareContentValidation$Validator;->validate(Lcom/facebook/share/model/ShareOpenGraphContent;)V

    goto :goto_0

    .line 109
    .restart local p0    # "content":Lcom/facebook/share/model/ShareContent;
    :cond_5
    instance-of v0, p0, Lcom/facebook/share/model/ShareMediaContent;

    if-eqz v0, :cond_1

    .line 110
    check-cast p0, Lcom/facebook/share/model/ShareMediaContent;

    .end local p0    # "content":Lcom/facebook/share/model/ShareContent;
    invoke-virtual {p1, p0}, Lcom/facebook/share/internal/ShareContentValidation$Validator;->validate(Lcom/facebook/share/model/ShareMediaContent;)V

    goto :goto_0
.end method

.method public static validateForApiShare(Lcom/facebook/share/model/ShareContent;)V
    .locals 1
    .param p0, "content"    # Lcom/facebook/share/model/ShareContent;

    .prologue
    .line 71
    invoke-static {}, Lcom/facebook/share/internal/ShareContentValidation;->getApiValidator()Lcom/facebook/share/internal/ShareContentValidation$Validator;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/share/internal/ShareContentValidation;->validate(Lcom/facebook/share/model/ShareContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    .line 72
    return-void
.end method

.method public static validateForMessage(Lcom/facebook/share/model/ShareContent;)V
    .locals 1
    .param p0, "content"    # Lcom/facebook/share/model/ShareContent;

    .prologue
    .line 59
    invoke-static {}, Lcom/facebook/share/internal/ShareContentValidation;->getDefaultValidator()Lcom/facebook/share/internal/ShareContentValidation$Validator;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/share/internal/ShareContentValidation;->validate(Lcom/facebook/share/model/ShareContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    .line 60
    return-void
.end method

.method public static validateForNativeShare(Lcom/facebook/share/model/ShareContent;)V
    .locals 1
    .param p0, "content"    # Lcom/facebook/share/model/ShareContent;

    .prologue
    .line 63
    invoke-static {}, Lcom/facebook/share/internal/ShareContentValidation;->getDefaultValidator()Lcom/facebook/share/internal/ShareContentValidation$Validator;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/share/internal/ShareContentValidation;->validate(Lcom/facebook/share/model/ShareContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    .line 64
    return-void
.end method

.method public static validateForWebShare(Lcom/facebook/share/model/ShareContent;)V
    .locals 1
    .param p0, "content"    # Lcom/facebook/share/model/ShareContent;

    .prologue
    .line 67
    invoke-static {}, Lcom/facebook/share/internal/ShareContentValidation;->getWebShareValidator()Lcom/facebook/share/internal/ShareContentValidation$Validator;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/share/internal/ShareContentValidation;->validate(Lcom/facebook/share/model/ShareContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    .line 68
    return-void
.end method

.method private static validateLinkContent(Lcom/facebook/share/model/ShareLinkContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .locals 3
    .param p0, "linkContent"    # Lcom/facebook/share/model/ShareLinkContent;
    .param p1, "validator"    # Lcom/facebook/share/internal/ShareContentValidation$Validator;

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareLinkContent;->getImageUrl()Landroid/net/Uri;

    move-result-object v0

    .line 117
    .local v0, "imageUrl":Landroid/net/Uri;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/facebook/internal/Utility;->isWebUri(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 118
    new-instance v1, Lcom/facebook/FacebookException;

    const-string v2, "Image Url must be an http:// or https:// url"

    invoke-direct {v1, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 120
    :cond_0
    return-void
.end method

.method private static validateMediaContent(Lcom/facebook/share/model/ShareMediaContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .locals 8
    .param p0, "mediaContent"    # Lcom/facebook/share/model/ShareMediaContent;
    .param p1, "validator"    # Lcom/facebook/share/internal/ShareContentValidation$Validator;

    .prologue
    const/4 v7, 0x6

    .line 210
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMediaContent;->getMedia()Ljava/util/List;

    move-result-object v0

    .line 211
    .local v0, "media":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/share/model/ShareMedia;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 212
    :cond_0
    new-instance v2, Lcom/facebook/FacebookException;

    const-string v3, "Must specify at least one medium in ShareMediaContent."

    invoke-direct {v2, v3}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 214
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v7, :cond_2

    .line 215
    new-instance v2, Lcom/facebook/FacebookException;

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v4, "Cannot add more than %d media."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 219
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    .line 216
    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 221
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/share/model/ShareMedia;

    .line 222
    .local v1, "medium":Lcom/facebook/share/model/ShareMedia;
    invoke-virtual {p1, v1}, Lcom/facebook/share/internal/ShareContentValidation$Validator;->validate(Lcom/facebook/share/model/ShareMedia;)V

    goto :goto_0

    .line 224
    .end local v1    # "medium":Lcom/facebook/share/model/ShareMedia;
    :cond_3
    return-void
.end method

.method public static validateMedium(Lcom/facebook/share/model/ShareMedia;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .locals 6
    .param p0, "medium"    # Lcom/facebook/share/model/ShareMedia;
    .param p1, "validator"    # Lcom/facebook/share/internal/ShareContentValidation$Validator;

    .prologue
    .line 227
    instance-of v0, p0, Lcom/facebook/share/model/SharePhoto;

    if-eqz v0, :cond_0

    .line 228
    check-cast p0, Lcom/facebook/share/model/SharePhoto;

    .end local p0    # "medium":Lcom/facebook/share/model/ShareMedia;
    invoke-virtual {p1, p0}, Lcom/facebook/share/internal/ShareContentValidation$Validator;->validate(Lcom/facebook/share/model/SharePhoto;)V

    .line 238
    :goto_0
    return-void

    .line 229
    .restart local p0    # "medium":Lcom/facebook/share/model/ShareMedia;
    :cond_0
    instance-of v0, p0, Lcom/facebook/share/model/ShareVideo;

    if-eqz v0, :cond_1

    .line 230
    check-cast p0, Lcom/facebook/share/model/ShareVideo;

    .end local p0    # "medium":Lcom/facebook/share/model/ShareMedia;
    invoke-virtual {p1, p0}, Lcom/facebook/share/internal/ShareContentValidation$Validator;->validate(Lcom/facebook/share/model/ShareVideo;)V

    goto :goto_0

    .line 232
    .restart local p0    # "medium":Lcom/facebook/share/model/ShareMedia;
    :cond_1
    new-instance v0, Lcom/facebook/FacebookException;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v2, "Invalid media type: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 236
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 233
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static validateOpenGraphAction(Lcom/facebook/share/model/ShareOpenGraphAction;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .locals 2
    .param p0, "openGraphAction"    # Lcom/facebook/share/model/ShareOpenGraphAction;
    .param p1, "validator"    # Lcom/facebook/share/internal/ShareContentValidation$Validator;

    .prologue
    .line 260
    if-nez p0, :cond_0

    .line 261
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Must specify a non-null ShareOpenGraphAction"

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 264
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareOpenGraphAction;->getActionType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 265
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "ShareOpenGraphAction must have a non-empty actionType"

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 268
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/facebook/share/internal/ShareContentValidation$Validator;->validate(Lcom/facebook/share/model/ShareOpenGraphValueContainer;Z)V

    .line 269
    return-void
.end method

.method private static validateOpenGraphContent(Lcom/facebook/share/model/ShareOpenGraphContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .locals 4
    .param p0, "openGraphContent"    # Lcom/facebook/share/model/ShareOpenGraphContent;
    .param p1, "validator"    # Lcom/facebook/share/internal/ShareContentValidation$Validator;

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareOpenGraphContent;->getAction()Lcom/facebook/share/model/ShareOpenGraphAction;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/facebook/share/internal/ShareContentValidation$Validator;->validate(Lcom/facebook/share/model/ShareOpenGraphAction;)V

    .line 244
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareOpenGraphContent;->getPreviewPropertyName()Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, "previewPropertyName":Ljava/lang/String;
    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 246
    new-instance v1, Lcom/facebook/FacebookException;

    const-string v2, "Must specify a previewPropertyName."

    invoke-direct {v1, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 249
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareOpenGraphContent;->getAction()Lcom/facebook/share/model/ShareOpenGraphAction;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/facebook/share/model/ShareOpenGraphAction;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 250
    new-instance v1, Lcom/facebook/FacebookException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Property \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" was not found on the action. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "The name of the preview property must match the name of an "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "action property."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 255
    :cond_1
    return-void
.end method

.method private static validateOpenGraphKey(Ljava/lang/String;Z)V
    .locals 7
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "requireNamespace"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 306
    if-nez p1, :cond_1

    .line 319
    :cond_0
    return-void

    .line 310
    :cond_1
    const-string v2, ":"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 311
    .local v1, "components":[Ljava/lang/String;
    array-length v2, v1

    const/4 v4, 0x2

    if-ge v2, v4, :cond_2

    .line 312
    new-instance v2, Lcom/facebook/FacebookException;

    const-string v4, "Open Graph keys must be namespaced: %s"

    new-array v5, v6, [Ljava/lang/Object;

    aput-object p0, v5, v3

    invoke-direct {v2, v4, v5}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    .line 314
    :cond_2
    array-length v4, v1

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v1, v2

    .line 315
    .local v0, "component":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 316
    new-instance v2, Lcom/facebook/FacebookException;

    const-string v4, "Invalid key found in Open Graph dictionary: %s"

    new-array v5, v6, [Ljava/lang/Object;

    aput-object p0, v5, v3

    invoke-direct {v2, v4, v5}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    .line 314
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static validateOpenGraphObject(Lcom/facebook/share/model/ShareOpenGraphObject;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .locals 2
    .param p0, "openGraphObject"    # Lcom/facebook/share/model/ShareOpenGraphObject;
    .param p1, "validator"    # Lcom/facebook/share/internal/ShareContentValidation$Validator;

    .prologue
    .line 274
    if-nez p0, :cond_0

    .line 275
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Cannot share a null ShareOpenGraphObject"

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 278
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Lcom/facebook/share/internal/ShareContentValidation$Validator;->validate(Lcom/facebook/share/model/ShareOpenGraphValueContainer;Z)V

    .line 279
    return-void
.end method

.method private static validateOpenGraphValueContainer(Lcom/facebook/share/model/ShareOpenGraphValueContainer;Lcom/facebook/share/internal/ShareContentValidation$Validator;Z)V
    .locals 8
    .param p0, "valueContainer"    # Lcom/facebook/share/model/ShareOpenGraphValueContainer;
    .param p1, "validator"    # Lcom/facebook/share/internal/ShareContentValidation$Validator;
    .param p2, "requireNamespace"    # Z

    .prologue
    .line 285
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareOpenGraphValueContainer;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 286
    .local v1, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 287
    .local v0, "key":Ljava/lang/String;
    invoke-static {v0, p2}, Lcom/facebook/share/internal/ShareContentValidation;->validateOpenGraphKey(Ljava/lang/String;Z)V

    .line 288
    invoke-virtual {p0, v0}, Lcom/facebook/share/model/ShareOpenGraphValueContainer;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 289
    .local v3, "o":Ljava/lang/Object;
    instance-of v6, v3, Ljava/util/List;

    if-eqz v6, :cond_2

    move-object v2, v3

    .line 290
    check-cast v2, Ljava/util/List;

    .line 291
    .local v2, "list":Ljava/util/List;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 292
    .local v4, "objectInList":Ljava/lang/Object;
    if-nez v4, :cond_1

    .line 293
    new-instance v5, Lcom/facebook/FacebookException;

    const-string v6, "Cannot put null objects in Lists in ShareOpenGraphObjects and ShareOpenGraphActions"

    invoke-direct {v5, v6}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 297
    :cond_1
    invoke-static {v4, p1}, Lcom/facebook/share/internal/ShareContentValidation;->validateOpenGraphValueContainerObject(Ljava/lang/Object;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    goto :goto_1

    .line 300
    .end local v2    # "list":Ljava/util/List;
    .end local v4    # "objectInList":Ljava/lang/Object;
    :cond_2
    invoke-static {v3, p1}, Lcom/facebook/share/internal/ShareContentValidation;->validateOpenGraphValueContainerObject(Ljava/lang/Object;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    goto :goto_0

    .line 303
    .end local v0    # "key":Ljava/lang/String;
    .end local v3    # "o":Ljava/lang/Object;
    :cond_3
    return-void
.end method

.method private static validateOpenGraphValueContainerObject(Ljava/lang/Object;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .locals 1
    .param p0, "o"    # Ljava/lang/Object;
    .param p1, "validator"    # Lcom/facebook/share/internal/ShareContentValidation$Validator;

    .prologue
    .line 323
    instance-of v0, p0, Lcom/facebook/share/model/ShareOpenGraphObject;

    if-eqz v0, :cond_1

    .line 324
    check-cast p0, Lcom/facebook/share/model/ShareOpenGraphObject;

    .end local p0    # "o":Ljava/lang/Object;
    invoke-virtual {p1, p0}, Lcom/facebook/share/internal/ShareContentValidation$Validator;->validate(Lcom/facebook/share/model/ShareOpenGraphObject;)V

    .line 328
    :cond_0
    :goto_0
    return-void

    .line 325
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v0, p0, Lcom/facebook/share/model/SharePhoto;

    if-eqz v0, :cond_0

    .line 326
    check-cast p0, Lcom/facebook/share/model/SharePhoto;

    .end local p0    # "o":Ljava/lang/Object;
    invoke-virtual {p1, p0}, Lcom/facebook/share/internal/ShareContentValidation$Validator;->validate(Lcom/facebook/share/model/SharePhoto;)V

    goto :goto_0
.end method

.method private static validatePhotoContent(Lcom/facebook/share/model/SharePhotoContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .locals 8
    .param p0, "photoContent"    # Lcom/facebook/share/model/SharePhotoContent;
    .param p1, "validator"    # Lcom/facebook/share/internal/ShareContentValidation$Validator;

    .prologue
    const/4 v7, 0x6

    .line 124
    invoke-virtual {p0}, Lcom/facebook/share/model/SharePhotoContent;->getPhotos()Ljava/util/List;

    move-result-object v1

    .line 125
    .local v1, "photos":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/share/model/SharePhoto;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 126
    :cond_0
    new-instance v2, Lcom/facebook/FacebookException;

    const-string v3, "Must specify at least one Photo in SharePhotoContent."

    invoke-direct {v2, v3}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 128
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v7, :cond_2

    .line 129
    new-instance v2, Lcom/facebook/FacebookException;

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v4, "Cannot add more than %d photos."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 133
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    .line 130
    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 136
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/model/SharePhoto;

    .line 137
    .local v0, "photo":Lcom/facebook/share/model/SharePhoto;
    invoke-virtual {p1, v0}, Lcom/facebook/share/internal/ShareContentValidation$Validator;->validate(Lcom/facebook/share/model/SharePhoto;)V

    goto :goto_0

    .line 139
    .end local v0    # "photo":Lcom/facebook/share/model/SharePhoto;
    :cond_3
    return-void
.end method

.method private static validatePhotoForApi(Lcom/facebook/share/model/SharePhoto;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .locals 4
    .param p0, "photo"    # Lcom/facebook/share/model/SharePhoto;
    .param p1, "validator"    # Lcom/facebook/share/internal/ShareContentValidation$Validator;

    .prologue
    .line 142
    if-nez p0, :cond_0

    .line 143
    new-instance v2, Lcom/facebook/FacebookException;

    const-string v3, "Cannot share a null SharePhoto"

    invoke-direct {v2, v3}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 146
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/share/model/SharePhoto;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 147
    .local v0, "photoBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/facebook/share/model/SharePhoto;->getImageUrl()Landroid/net/Uri;

    move-result-object v1

    .line 149
    .local v1, "photoUri":Landroid/net/Uri;
    if-nez v0, :cond_2

    .line 150
    if-nez v1, :cond_1

    .line 151
    new-instance v2, Lcom/facebook/FacebookException;

    const-string v3, "SharePhoto does not have a Bitmap or ImageUrl specified"

    invoke-direct {v2, v3}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 155
    :cond_1
    invoke-static {v1}, Lcom/facebook/internal/Utility;->isWebUri(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/facebook/share/internal/ShareContentValidation$Validator;->isOpenGraphContent()Z

    move-result v2

    if-nez v2, :cond_2

    .line 156
    new-instance v2, Lcom/facebook/FacebookException;

    const-string v3, "Cannot set the ImageUrl of a SharePhoto to the Uri of an image on the web when sharing SharePhotoContent"

    invoke-direct {v2, v3}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 161
    :cond_2
    return-void
.end method

.method private static validatePhotoForNativeDialog(Lcom/facebook/share/model/SharePhoto;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .locals 1
    .param p0, "photo"    # Lcom/facebook/share/model/SharePhoto;
    .param p1, "validator"    # Lcom/facebook/share/internal/ShareContentValidation$Validator;

    .prologue
    .line 164
    invoke-static {p0, p1}, Lcom/facebook/share/internal/ShareContentValidation;->validatePhotoForApi(Lcom/facebook/share/model/SharePhoto;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    .line 166
    invoke-virtual {p0}, Lcom/facebook/share/model/SharePhoto;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/share/model/SharePhoto;->getImageUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/Utility;->isWebUri(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 167
    :cond_0
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/Validate;->hasContentProvider(Landroid/content/Context;)V

    .line 169
    :cond_1
    return-void
.end method

.method private static validatePhotoForWebDialog(Lcom/facebook/share/model/SharePhoto;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .locals 3
    .param p0, "photo"    # Lcom/facebook/share/model/SharePhoto;
    .param p1, "validator"    # Lcom/facebook/share/internal/ShareContentValidation$Validator;

    .prologue
    .line 172
    if-nez p0, :cond_0

    .line 173
    new-instance v1, Lcom/facebook/FacebookException;

    const-string v2, "Cannot share a null SharePhoto"

    invoke-direct {v1, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 176
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/share/model/SharePhoto;->getImageUrl()Landroid/net/Uri;

    move-result-object v0

    .line 177
    .local v0, "imageUri":Landroid/net/Uri;
    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/facebook/internal/Utility;->isWebUri(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 178
    :cond_1
    new-instance v1, Lcom/facebook/FacebookException;

    const-string v2, "SharePhoto must have a non-null imageUrl set to the Uri of an image on the web"

    invoke-direct {v1, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 182
    :cond_2
    return-void
.end method

.method private static validateVideo(Lcom/facebook/share/model/ShareVideo;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .locals 3
    .param p0, "video"    # Lcom/facebook/share/model/ShareVideo;
    .param p1, "validator"    # Lcom/facebook/share/internal/ShareContentValidation$Validator;

    .prologue
    .line 195
    if-nez p0, :cond_0

    .line 196
    new-instance v1, Lcom/facebook/FacebookException;

    const-string v2, "Cannot share a null ShareVideo"

    invoke-direct {v1, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 199
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareVideo;->getLocalUrl()Landroid/net/Uri;

    move-result-object v0

    .line 200
    .local v0, "localUri":Landroid/net/Uri;
    if-nez v0, :cond_1

    .line 201
    new-instance v1, Lcom/facebook/FacebookException;

    const-string v2, "ShareVideo does not have a LocalUrl specified"

    invoke-direct {v1, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 204
    :cond_1
    invoke-static {v0}, Lcom/facebook/internal/Utility;->isContentUri(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Lcom/facebook/internal/Utility;->isFileUri(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 205
    new-instance v1, Lcom/facebook/FacebookException;

    const-string v2, "ShareVideo must reference a video that is on the device"

    invoke-direct {v1, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 207
    :cond_2
    return-void
.end method

.method private static validateVideoContent(Lcom/facebook/share/model/ShareVideoContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .locals 2
    .param p0, "videoContent"    # Lcom/facebook/share/model/ShareVideoContent;
    .param p1, "validator"    # Lcom/facebook/share/internal/ShareContentValidation$Validator;

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareVideoContent;->getVideo()Lcom/facebook/share/model/ShareVideo;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/facebook/share/internal/ShareContentValidation$Validator;->validate(Lcom/facebook/share/model/ShareVideo;)V

    .line 188
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareVideoContent;->getPreviewPhoto()Lcom/facebook/share/model/SharePhoto;

    move-result-object v0

    .line 189
    .local v0, "previewPhoto":Lcom/facebook/share/model/SharePhoto;
    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {p1, v0}, Lcom/facebook/share/internal/ShareContentValidation$Validator;->validate(Lcom/facebook/share/model/SharePhoto;)V

    .line 192
    :cond_0
    return-void
.end method
