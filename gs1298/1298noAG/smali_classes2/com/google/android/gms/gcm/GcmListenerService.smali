.class public abstract Lcom/google/android/gms/gcm/GcmListenerService;
.super Landroid/app/Service;


# instance fields
.field private zzbfI:I

.field private zzbfJ:I

.field private final zzrN:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/gcm/GcmListenerService;->zzrN:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/gcm/GcmListenerService;->zzbfJ:I

    return-void
.end method

.method static zzD(Landroid/os/Bundle;)V
    .locals 3

    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v2, "google.c."

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private zzGa()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/gcm/GcmListenerService;->zzrN:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/gcm/GcmListenerService;->zzbfJ:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/gcm/GcmListenerService;->zzbfJ:I

    iget v0, p0, Lcom/google/android/gms/gcm/GcmListenerService;->zzbfJ:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/gcm/GcmListenerService;->zzbfI:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/gcm/GcmListenerService;->zzjr(I)Z

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic zza(Lcom/google/android/gms/gcm/GcmListenerService;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/gcm/GcmListenerService;->zzm(Landroid/content/Intent;)V

    return-void
.end method

.method private zzl(Landroid/content/Intent;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/gcm/GcmListenerService$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/gcm/GcmListenerService$1;-><init>(Lcom/google/android/gms/gcm/GcmListenerService;Landroid/content/Intent;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/gcm/GcmListenerService$2;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/gcm/GcmListenerService$2;-><init>(Lcom/google/android/gms/gcm/GcmListenerService;Landroid/content/Intent;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/gcm/GcmListenerService$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private zzm(Landroid/content/Intent;)V
    .locals 4

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_1

    const-string v1, "GcmListenerService"

    const-string v2, "Unknown intent action: "

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    invoke-direct {p0}, Lcom/google/android/gms/gcm/GcmListenerService;->zzGa()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1}, Lcom/google/android/gms/gcm/GcmReceiver;->completeWakefulIntent(Landroid/content/Intent;)Z

    return-void

    :pswitch_0
    :try_start_1
    const-string v2, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/google/android/gms/gcm/GcmListenerService;->zzn(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-static {p1}, Lcom/google/android/gms/gcm/GcmReceiver;->completeWakefulIntent(Landroid/content/Intent;)Z

    throw v0

    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x15d8a480
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method private zzn(Landroid/content/Intent;)V
    .locals 4

    const-string v0, "message_type"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "gcm"

    :cond_0
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_1
    :goto_0
    packed-switch v1, :pswitch_data_0

    const-string v1, "GcmListenerService"

    const-string v2, "Received message with unknown type: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void

    :sswitch_0
    const-string v2, "gcm"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "deleted_messages"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "send_event"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string v2, "send_error"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x3

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/gcm/GcmListenerService;->zzo(Landroid/content/Intent;)V

    goto :goto_2

    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/gms/gcm/GcmListenerService;->onDeletedMessages()V

    goto :goto_2

    :pswitch_2
    const-string v0, "google.message_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/gcm/GcmListenerService;->onMessageSent(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_3
    invoke-direct {p0, p1}, Lcom/google/android/gms/gcm/GcmListenerService;->zzp(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "error"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/gcm/GcmListenerService;->onSendError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7aedf14e -> :sswitch_1
        0x18f11 -> :sswitch_0
        0x308f3e91 -> :sswitch_3
        0x3090df23 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private zzo(Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "message_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v1, "android.support.content.wakelockid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/gcm/zza;->zzE(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/google/android/gms/gcm/zza;->zzbc(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/gcm/zza;->zzbb(Landroid/content/Context;)Lcom/google/android/gms/gcm/zza;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/gcm/zza;->zzG(Landroid/os/Bundle;)Z

    :goto_0
    return-void

    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/gcm/zza;->zzF(Landroid/os/Bundle;)V

    :cond_1
    const-string v1, "from"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "from"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/gcm/GcmListenerService;->zzD(Landroid/os/Bundle;)V

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/gcm/GcmListenerService;->onMessageReceived(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private zzp(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1

    const-string v0, "google.message_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "message_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onDeletedMessages()V
    .locals 0

    return-void
.end method

.method public onMessageReceived(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onMessageSent(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSendError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/gcm/GcmListenerService;->zzrN:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput p3, p0, Lcom/google/android/gms/gcm/GcmListenerService;->zzbfI:I

    iget v0, p0, Lcom/google/android/gms/gcm/GcmListenerService;->zzbfJ:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/gcm/GcmListenerService;->zzbfJ:I

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/gcm/GcmListenerService;->zzGa()V

    const/4 v0, 0x2

    :goto_0
    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/gcm/GcmListenerService;->zzl(Landroid/content/Intent;)V

    const/4 v0, 0x3

    goto :goto_0
.end method

.method zzjr(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/gcm/GcmListenerService;->stopSelfResult(I)Z

    move-result v0

    return v0
.end method
