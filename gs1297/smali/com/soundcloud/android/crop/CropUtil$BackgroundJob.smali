.class Lcom/soundcloud/android/crop/CropUtil$BackgroundJob;
.super Lcom/soundcloud/android/crop/MonitoredActivity$LifeCycleAdapter;
.source "CropUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/soundcloud/android/crop/CropUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BackgroundJob"
.end annotation


# instance fields
.field private final activity:Lcom/soundcloud/android/crop/MonitoredActivity;

.field private final cleanupRunner:Ljava/lang/Runnable;

.field private final dialog:Landroid/app/ProgressDialog;

.field private final handler:Landroid/os/Handler;

.field private final job:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/soundcloud/android/crop/MonitoredActivity;Ljava/lang/Runnable;Landroid/app/ProgressDialog;Landroid/os/Handler;)V
    .locals 1
    .param p1, "activity"    # Lcom/soundcloud/android/crop/MonitoredActivity;
    .param p2, "job"    # Ljava/lang/Runnable;
    .param p3, "dialog"    # Landroid/app/ProgressDialog;
    .param p4, "handler"    # Landroid/os/Handler;

    .prologue
    .line 183
    invoke-direct {p0}, Lcom/soundcloud/android/crop/MonitoredActivity$LifeCycleAdapter;-><init>()V

    .line 175
    new-instance v0, Lcom/soundcloud/android/crop/CropUtil$BackgroundJob$1;

    invoke-direct {v0, p0}, Lcom/soundcloud/android/crop/CropUtil$BackgroundJob$1;-><init>(Lcom/soundcloud/android/crop/CropUtil$BackgroundJob;)V

    iput-object v0, p0, Lcom/soundcloud/android/crop/CropUtil$BackgroundJob;->cleanupRunner:Ljava/lang/Runnable;

    .line 184
    iput-object p1, p0, Lcom/soundcloud/android/crop/CropUtil$BackgroundJob;->activity:Lcom/soundcloud/android/crop/MonitoredActivity;

    .line 185
    iput-object p3, p0, Lcom/soundcloud/android/crop/CropUtil$BackgroundJob;->dialog:Landroid/app/ProgressDialog;

    .line 186
    iput-object p2, p0, Lcom/soundcloud/android/crop/CropUtil$BackgroundJob;->job:Ljava/lang/Runnable;

    .line 187
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropUtil$BackgroundJob;->activity:Lcom/soundcloud/android/crop/MonitoredActivity;

    invoke-virtual {v0, p0}, Lcom/soundcloud/android/crop/MonitoredActivity;->addLifeCycleListener(Lcom/soundcloud/android/crop/MonitoredActivity$LifeCycleListener;)V

    .line 188
    iput-object p4, p0, Lcom/soundcloud/android/crop/CropUtil$BackgroundJob;->handler:Landroid/os/Handler;

    .line 189
    return-void
.end method

.method static synthetic access$000(Lcom/soundcloud/android/crop/CropUtil$BackgroundJob;)Lcom/soundcloud/android/crop/MonitoredActivity;
    .locals 1
    .param p0, "x0"    # Lcom/soundcloud/android/crop/CropUtil$BackgroundJob;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropUtil$BackgroundJob;->activity:Lcom/soundcloud/android/crop/MonitoredActivity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/soundcloud/android/crop/CropUtil$BackgroundJob;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/soundcloud/android/crop/CropUtil$BackgroundJob;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropUtil$BackgroundJob;->dialog:Landroid/app/ProgressDialog;

    return-object v0
.end method


# virtual methods
.method public onActivityDestroyed(Lcom/soundcloud/android/crop/MonitoredActivity;)V
    .locals 2
    .param p1, "activity"    # Lcom/soundcloud/android/crop/MonitoredActivity;

    .prologue
    .line 203
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropUtil$BackgroundJob;->cleanupRunner:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 204
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropUtil$BackgroundJob;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/soundcloud/android/crop/CropUtil$BackgroundJob;->cleanupRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 205
    return-void
.end method

.method public onActivityStarted(Lcom/soundcloud/android/crop/MonitoredActivity;)V
    .locals 1
    .param p1, "activity"    # Lcom/soundcloud/android/crop/MonitoredActivity;

    .prologue
    .line 214
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropUtil$BackgroundJob;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 215
    return-void
.end method

.method public onActivityStopped(Lcom/soundcloud/android/crop/MonitoredActivity;)V
    .locals 1
    .param p1, "activity"    # Lcom/soundcloud/android/crop/MonitoredActivity;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropUtil$BackgroundJob;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 210
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 193
    :try_start_0
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropUtil$BackgroundJob;->job:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropUtil$BackgroundJob;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/soundcloud/android/crop/CropUtil$BackgroundJob;->cleanupRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 197
    return-void

    .line 195
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/soundcloud/android/crop/CropUtil$BackgroundJob;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/soundcloud/android/crop/CropUtil$BackgroundJob;->cleanupRunner:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    throw v0
.end method
