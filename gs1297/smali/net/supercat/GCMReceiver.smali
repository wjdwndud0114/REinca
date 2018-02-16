.class public Lnet/supercat/GCMReceiver;
.super Lcom/google/android/gcm/GCMBroadcastReceiver;
.source "GCMReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/google/android/gcm/GCMBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method protected getGCMIntentServiceClassName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 11
    const-class v0, Lnet/supercat/GCMIntentService;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
