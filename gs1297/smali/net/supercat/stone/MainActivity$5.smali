.class Lnet/supercat/stone/MainActivity$5;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/supercat/stone/MainActivity;->savePicture(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/supercat/stone/MainActivity;

.field final synthetic val$desc:Ljava/lang/String;

.field final synthetic val$imageURL:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnet/supercat/stone/MainActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lnet/supercat/stone/MainActivity;

    .prologue
    .line 411
    iput-object p1, p0, Lnet/supercat/stone/MainActivity$5;->this$0:Lnet/supercat/stone/MainActivity;

    iput-object p2, p0, Lnet/supercat/stone/MainActivity$5;->val$imageURL:Ljava/lang/String;

    iput-object p3, p0, Lnet/supercat/stone/MainActivity$5;->val$title:Ljava/lang/String;

    iput-object p4, p0, Lnet/supercat/stone/MainActivity$5;->val$desc:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 417
    :try_start_0
    iget-object v1, p0, Lnet/supercat/stone/MainActivity$5;->this$0:Lnet/supercat/stone/MainActivity;

    invoke-virtual {v1}, Lnet/supercat/stone/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lnet/supercat/stone/MainActivity$5;->val$imageURL:Ljava/lang/String;

    iget-object v3, p0, Lnet/supercat/stone/MainActivity$5;->val$title:Ljava/lang/String;

    iget-object v4, p0, Lnet/supercat/stone/MainActivity$5;->val$desc:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Landroid/provider/MediaStore$Images$Media;->insertImage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    :goto_0
    iget-object v1, p0, Lnet/supercat/stone/MainActivity$5;->this$0:Lnet/supercat/stone/MainActivity;

    invoke-virtual {v1}, Lnet/supercat/stone/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Saved screenshot in gallery."

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 424
    return-void

    .line 418
    :catch_0
    move-exception v0

    .line 419
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v1, "supercat"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
