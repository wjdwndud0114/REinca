.class final Lcom/igaworks/IgawCommon$11;
.super Ljava/util/TimerTask;
.source "IgawCommon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/IgawCommon;->protectSessionTracking(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 349
    iput-object p1, p0, Lcom/igaworks/IgawCommon$11;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 353
    sget-boolean v0, Lcom/igaworks/IgawCommon;->isProtectSessionTrackingCall:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/igaworks/impl/CommonFrameworkImpl;->isFocusOnForCrashlytics:Z

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/igaworks/IgawCommon$11;->val$activity:Landroid/app/Activity;

    const-string v1, "IGAW_QA"

    const-string v2, "The protectSessionTracking timer is executed. Call startSession."

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 356
    iget-object v0, p0, Lcom/igaworks/IgawCommon$11;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/igaworks/IgawCommon;->startSession(Landroid/app/Activity;)V

    .line 362
    :goto_0
    return-void

    .line 360
    :cond_0
    const-string v0, "IGAW_QA"

    const-string v1, "The protectSessionTracking timer is not executed because this app is in background"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
