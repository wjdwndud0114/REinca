.class public Lcom/soundcloud/android/crop/Crop;
.super Ljava/lang/Object;
.source "Crop.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/soundcloud/android/crop/Crop$Extra;
    }
.end annotation


# static fields
.field public static final REQUEST_CROP:I = 0x1a35

.field public static final REQUEST_PICK:I = 0x23ca

.field public static final RESULT_ERROR:I = 0x194


# instance fields
.field private cropIntent:Landroid/content/Intent;


# direct methods
.method private constructor <init>(Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 2
    .param p1, "source"    # Landroid/net/Uri;
    .param p2, "destination"    # Landroid/net/Uri;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/soundcloud/android/crop/Crop;->cropIntent:Landroid/content/Intent;

    .line 45
    iget-object v0, p0, Lcom/soundcloud/android/crop/Crop;->cropIntent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 46
    iget-object v0, p0, Lcom/soundcloud/android/crop/Crop;->cropIntent:Landroid/content/Intent;

    const-string v1, "output"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 47
    return-void
.end method

.method public static getError(Landroid/content/Intent;)Ljava/lang/Throwable;
    .locals 1
    .param p0, "result"    # Landroid/content/Intent;

    .prologue
    .line 171
    const-string v0, "error"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    return-object v0
.end method

.method private static getImagePicker()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 249
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getOutput(Landroid/content/Intent;)Landroid/net/Uri;
    .locals 1
    .param p0, "result"    # Landroid/content/Intent;

    .prologue
    .line 161
    const-string v0, "output"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    return-object v0
.end method

.method public static of(Landroid/net/Uri;Landroid/net/Uri;)Lcom/soundcloud/android/crop/Crop;
    .locals 1
    .param p0, "source"    # Landroid/net/Uri;
    .param p1, "destination"    # Landroid/net/Uri;

    .prologue
    .line 40
    new-instance v0, Lcom/soundcloud/android/crop/Crop;

    invoke-direct {v0, p0, p1}, Lcom/soundcloud/android/crop/Crop;-><init>(Landroid/net/Uri;Landroid/net/Uri;)V

    return-object v0
.end method

.method public static pickImage(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 180
    const/16 v0, 0x23ca

    invoke-static {p0, v0}, Lcom/soundcloud/android/crop/Crop;->pickImage(Landroid/app/Activity;I)V

    .line 181
    return-void
.end method

.method public static pickImage(Landroid/app/Activity;I)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "requestCode"    # I

    .prologue
    .line 211
    :try_start_0
    invoke-static {}, Lcom/soundcloud/android/crop/Crop;->getImagePicker()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    :goto_0
    return-void

    .line 212
    :catch_0
    move-exception v0

    .line 213
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-static {p0}, Lcom/soundcloud/android/crop/Crop;->showImagePickerError(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static pickImage(Landroid/content/Context;Landroid/app/Fragment;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 190
    const/16 v0, 0x23ca

    invoke-static {p0, p1, v0}, Lcom/soundcloud/android/crop/Crop;->pickImage(Landroid/content/Context;Landroid/app/Fragment;I)V

    .line 191
    return-void
.end method

.method public static pickImage(Landroid/content/Context;Landroid/app/Fragment;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "requestCode"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 227
    :try_start_0
    invoke-static {}, Lcom/soundcloud/android/crop/Crop;->getImagePicker()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    :goto_0
    return-void

    .line 228
    :catch_0
    move-exception v0

    .line 229
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-static {p0}, Lcom/soundcloud/android/crop/Crop;->showImagePickerError(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static pickImage(Landroid/content/Context;Landroid/support/v4/app/Fragment;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 200
    const/16 v0, 0x23ca

    invoke-static {p0, p1, v0}, Lcom/soundcloud/android/crop/Crop;->pickImage(Landroid/content/Context;Landroid/support/v4/app/Fragment;I)V

    .line 201
    return-void
.end method

.method public static pickImage(Landroid/content/Context;Landroid/support/v4/app/Fragment;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "requestCode"    # I

    .prologue
    .line 242
    :try_start_0
    invoke-static {}, Lcom/soundcloud/android/crop/Crop;->getImagePicker()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    :goto_0
    return-void

    .line 243
    :catch_0
    move-exception v0

    .line 244
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-static {p0}, Lcom/soundcloud/android/crop/Crop;->showImagePickerError(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private static showImagePickerError(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 253
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "crop__pick_error"

    const-string v2, "string"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 254
    return-void
.end method


# virtual methods
.method public asSquare()Lcom/soundcloud/android/crop/Crop;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 65
    iget-object v0, p0, Lcom/soundcloud/android/crop/Crop;->cropIntent:Landroid/content/Intent;

    const-string v1, "aspect_x"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 66
    iget-object v0, p0, Lcom/soundcloud/android/crop/Crop;->cropIntent:Landroid/content/Intent;

    const-string v1, "aspect_y"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 67
    return-object p0
.end method

.method public getIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/soundcloud/android/crop/Crop;->cropIntent:Landroid/content/Intent;

    const-class v1, Lcom/soundcloud/android/crop/CropImageActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 152
    iget-object v0, p0, Lcom/soundcloud/android/crop/Crop;->cropIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public start(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 88
    const/16 v0, 0x1a35

    invoke-virtual {p0, p1, v0}, Lcom/soundcloud/android/crop/Crop;->start(Landroid/app/Activity;I)V

    .line 89
    return-void
.end method

.method public start(Landroid/app/Activity;I)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/soundcloud/android/crop/Crop;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 99
    return-void
.end method

.method public start(Landroid/content/Context;Landroid/app/Fragment;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 108
    const/16 v0, 0x1a35

    invoke-virtual {p0, p1, p2, v0}, Lcom/soundcloud/android/crop/Crop;->start(Landroid/content/Context;Landroid/app/Fragment;I)V

    .line 109
    return-void
.end method

.method public start(Landroid/content/Context;Landroid/app/Fragment;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fragment"    # Landroid/app/Fragment;
    .param p3, "requestCode"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 130
    invoke-virtual {p0, p1}, Lcom/soundcloud/android/crop/Crop;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p2, v0, p3}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 131
    return-void
.end method

.method public start(Landroid/content/Context;Landroid/support/v4/app/Fragment;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 118
    const/16 v0, 0x1a35

    invoke-virtual {p0, p1, p2, v0}, Lcom/soundcloud/android/crop/Crop;->start(Landroid/content/Context;Landroid/support/v4/app/Fragment;I)V

    .line 119
    return-void
.end method

.method public start(Landroid/content/Context;Landroid/support/v4/app/Fragment;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p3, "requestCode"    # I

    .prologue
    .line 141
    invoke-virtual {p0, p1}, Lcom/soundcloud/android/crop/Crop;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p2, v0, p3}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 142
    return-void
.end method

.method public withAspect(II)Lcom/soundcloud/android/crop/Crop;
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 56
    iget-object v0, p0, Lcom/soundcloud/android/crop/Crop;->cropIntent:Landroid/content/Intent;

    const-string v1, "aspect_x"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 57
    iget-object v0, p0, Lcom/soundcloud/android/crop/Crop;->cropIntent:Landroid/content/Intent;

    const-string v1, "aspect_y"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 58
    return-object p0
.end method

.method public withMaxSize(II)Lcom/soundcloud/android/crop/Crop;
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 77
    iget-object v0, p0, Lcom/soundcloud/android/crop/Crop;->cropIntent:Landroid/content/Intent;

    const-string v1, "max_x"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 78
    iget-object v0, p0, Lcom/soundcloud/android/crop/Crop;->cropIntent:Landroid/content/Intent;

    const-string v1, "max_y"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 79
    return-object p0
.end method
