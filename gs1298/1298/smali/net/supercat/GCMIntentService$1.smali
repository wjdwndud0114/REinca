.class Lnet/supercat/GCMIntentService$1;
.super Ljava/lang/Object;
.source "GCMIntentService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/supercat/GCMIntentService;->onRegistered(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/supercat/GCMIntentService;

.field final synthetic val$registrationId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnet/supercat/GCMIntentService;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lnet/supercat/GCMIntentService;

    .prologue
    .line 36
    iput-object p1, p0, Lnet/supercat/GCMIntentService$1;->this$0:Lnet/supercat/GCMIntentService;

    iput-object p2, p0, Lnet/supercat/GCMIntentService$1;->val$registrationId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 39
    iget-object v0, p0, Lnet/supercat/GCMIntentService$1;->val$registrationId:Ljava/lang/String;

    sput-object v0, Lnet/supercat/stone/MainActivity;->mInitPushToken:Ljava/lang/String;

    .line 41
    invoke-static {}, Lnet/supercat/stone/MainActivity;->get()Lnet/supercat/stone/MainActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 42
    const-string v0, "supercat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registrationId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/supercat/GCMIntentService$1;->val$registrationId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-static {}, Lnet/supercat/stone/MainActivity;->get()Lnet/supercat/stone/MainActivity;

    move-result-object v0

    iget-object v1, p0, Lnet/supercat/GCMIntentService$1;->val$registrationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnet/supercat/stone/MainActivity;->handlePushToken(Ljava/lang/String;)V

    .line 45
    :cond_0
    return-void
.end method
