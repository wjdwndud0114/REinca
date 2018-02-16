.class Lcom/facebook/share/internal/ShareContentValidation$Validator;
.super Ljava/lang/Object;
.source "ShareContentValidation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/internal/ShareContentValidation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Validator"
.end annotation


# instance fields
.field private isOpenGraphContent:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 389
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/share/internal/ShareContentValidation$Validator;->isOpenGraphContent:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/share/internal/ShareContentValidation$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/facebook/share/internal/ShareContentValidation$1;

    .prologue
    .line 388
    invoke-direct {p0}, Lcom/facebook/share/internal/ShareContentValidation$Validator;-><init>()V

    return-void
.end method


# virtual methods
.method public isOpenGraphContent()Z
    .locals 1

    .prologue
    .line 438
    iget-boolean v0, p0, Lcom/facebook/share/internal/ShareContentValidation$Validator;->isOpenGraphContent:Z

    return v0
.end method

.method public validate(Lcom/facebook/share/model/ShareLinkContent;)V
    .locals 0
    .param p1, "linkContent"    # Lcom/facebook/share/model/ShareLinkContent;

    .prologue
    .line 392
    # invokes: Lcom/facebook/share/internal/ShareContentValidation;->validateLinkContent(Lcom/facebook/share/model/ShareLinkContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    invoke-static {p1, p0}, Lcom/facebook/share/internal/ShareContentValidation;->access$500(Lcom/facebook/share/model/ShareLinkContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    .line 393
    return-void
.end method

.method public validate(Lcom/facebook/share/model/ShareMedia;)V
    .locals 0
    .param p1, "medium"    # Lcom/facebook/share/model/ShareMedia;

    .prologue
    .line 434
    invoke-static {p1, p0}, Lcom/facebook/share/internal/ShareContentValidation;->validateMedium(Lcom/facebook/share/model/ShareMedia;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    .line 435
    return-void
.end method

.method public validate(Lcom/facebook/share/model/ShareMediaContent;)V
    .locals 0
    .param p1, "mediaContent"    # Lcom/facebook/share/model/ShareMediaContent;

    .prologue
    .line 404
    # invokes: Lcom/facebook/share/internal/ShareContentValidation;->validateMediaContent(Lcom/facebook/share/model/ShareMediaContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    invoke-static {p1, p0}, Lcom/facebook/share/internal/ShareContentValidation;->access$800(Lcom/facebook/share/model/ShareMediaContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    .line 405
    return-void
.end method

.method public validate(Lcom/facebook/share/model/ShareOpenGraphAction;)V
    .locals 0
    .param p1, "openGraphAction"    # Lcom/facebook/share/model/ShareOpenGraphAction;

    .prologue
    .line 413
    # invokes: Lcom/facebook/share/internal/ShareContentValidation;->validateOpenGraphAction(Lcom/facebook/share/model/ShareOpenGraphAction;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    invoke-static {p1, p0}, Lcom/facebook/share/internal/ShareContentValidation;->access$1000(Lcom/facebook/share/model/ShareOpenGraphAction;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    .line 414
    return-void
.end method

.method public validate(Lcom/facebook/share/model/ShareOpenGraphContent;)V
    .locals 1
    .param p1, "openGraphContent"    # Lcom/facebook/share/model/ShareOpenGraphContent;

    .prologue
    .line 408
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/share/internal/ShareContentValidation$Validator;->isOpenGraphContent:Z

    .line 409
    # invokes: Lcom/facebook/share/internal/ShareContentValidation;->validateOpenGraphContent(Lcom/facebook/share/model/ShareOpenGraphContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    invoke-static {p1, p0}, Lcom/facebook/share/internal/ShareContentValidation;->access$900(Lcom/facebook/share/model/ShareOpenGraphContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    .line 410
    return-void
.end method

.method public validate(Lcom/facebook/share/model/ShareOpenGraphObject;)V
    .locals 0
    .param p1, "openGraphObject"    # Lcom/facebook/share/model/ShareOpenGraphObject;

    .prologue
    .line 417
    # invokes: Lcom/facebook/share/internal/ShareContentValidation;->validateOpenGraphObject(Lcom/facebook/share/model/ShareOpenGraphObject;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    invoke-static {p1, p0}, Lcom/facebook/share/internal/ShareContentValidation;->access$1100(Lcom/facebook/share/model/ShareOpenGraphObject;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    .line 418
    return-void
.end method

.method public validate(Lcom/facebook/share/model/ShareOpenGraphValueContainer;Z)V
    .locals 0
    .param p1, "openGraphValueContainer"    # Lcom/facebook/share/model/ShareOpenGraphValueContainer;
    .param p2, "requireNamespace"    # Z

    .prologue
    .line 422
    # invokes: Lcom/facebook/share/internal/ShareContentValidation;->validateOpenGraphValueContainer(Lcom/facebook/share/model/ShareOpenGraphValueContainer;Lcom/facebook/share/internal/ShareContentValidation$Validator;Z)V
    invoke-static {p1, p0, p2}, Lcom/facebook/share/internal/ShareContentValidation;->access$1200(Lcom/facebook/share/model/ShareOpenGraphValueContainer;Lcom/facebook/share/internal/ShareContentValidation$Validator;Z)V

    .line 423
    return-void
.end method

.method public validate(Lcom/facebook/share/model/SharePhoto;)V
    .locals 0
    .param p1, "photo"    # Lcom/facebook/share/model/SharePhoto;

    .prologue
    .line 426
    # invokes: Lcom/facebook/share/internal/ShareContentValidation;->validatePhotoForNativeDialog(Lcom/facebook/share/model/SharePhoto;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    invoke-static {p1, p0}, Lcom/facebook/share/internal/ShareContentValidation;->access$1300(Lcom/facebook/share/model/SharePhoto;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    .line 427
    return-void
.end method

.method public validate(Lcom/facebook/share/model/SharePhotoContent;)V
    .locals 0
    .param p1, "photoContent"    # Lcom/facebook/share/model/SharePhotoContent;

    .prologue
    .line 396
    # invokes: Lcom/facebook/share/internal/ShareContentValidation;->validatePhotoContent(Lcom/facebook/share/model/SharePhotoContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    invoke-static {p1, p0}, Lcom/facebook/share/internal/ShareContentValidation;->access$600(Lcom/facebook/share/model/SharePhotoContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    .line 397
    return-void
.end method

.method public validate(Lcom/facebook/share/model/ShareVideo;)V
    .locals 0
    .param p1, "video"    # Lcom/facebook/share/model/ShareVideo;

    .prologue
    .line 430
    # invokes: Lcom/facebook/share/internal/ShareContentValidation;->validateVideo(Lcom/facebook/share/model/ShareVideo;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    invoke-static {p1, p0}, Lcom/facebook/share/internal/ShareContentValidation;->access$1400(Lcom/facebook/share/model/ShareVideo;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    .line 431
    return-void
.end method

.method public validate(Lcom/facebook/share/model/ShareVideoContent;)V
    .locals 0
    .param p1, "videoContent"    # Lcom/facebook/share/model/ShareVideoContent;

    .prologue
    .line 400
    # invokes: Lcom/facebook/share/internal/ShareContentValidation;->validateVideoContent(Lcom/facebook/share/model/ShareVideoContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    invoke-static {p1, p0}, Lcom/facebook/share/internal/ShareContentValidation;->access$700(Lcom/facebook/share/model/ShareVideoContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    .line 401
    return-void
.end method
