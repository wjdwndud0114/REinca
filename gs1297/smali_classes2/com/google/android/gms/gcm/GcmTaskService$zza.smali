.class Lcom/google/android/gms/gcm/GcmTaskService$zza;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/gcm/GcmTaskService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zza"
.end annotation


# instance fields
.field private final mExtras:Landroid/os/Bundle;

.field private final mTag:Ljava/lang/String;

.field private final zzbfU:Lcom/google/android/gms/gcm/zzb;

.field final synthetic zzbfV:Lcom/google/android/gms/gcm/GcmTaskService;


# direct methods
.method constructor <init>(Lcom/google/android/gms/gcm/GcmTaskService;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/gcm/GcmTaskService$zza;->zzbfV:Lcom/google/android/gms/gcm/GcmTaskService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/gcm/GcmTaskService$zza;->mTag:Ljava/lang/String;

    invoke-static {p3}, Lcom/google/android/gms/gcm/zzb$zza;->zzcV(Landroid/os/IBinder;)Lcom/google/android/gms/gcm/zzb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/gcm/GcmTaskService$zza;->zzbfU:Lcom/google/android/gms/gcm/zzb;

    iput-object p4, p0, Lcom/google/android/gms/gcm/GcmTaskService$zza;->mExtras:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/gcm/GcmTaskService$zza;->zzbfV:Lcom/google/android/gms/gcm/GcmTaskService;

    new-instance v1, Lcom/google/android/gms/gcm/TaskParams;

    iget-object v2, p0, Lcom/google/android/gms/gcm/GcmTaskService$zza;->mTag:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/gcm/GcmTaskService$zza;->mExtras:Landroid/os/Bundle;

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/gcm/TaskParams;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/gcm/GcmTaskService;->onRunTask(Lcom/google/android/gms/gcm/TaskParams;)I

    move-result v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/gcm/GcmTaskService$zza;->zzbfU:Lcom/google/android/gms/gcm/zzb;

    invoke-interface {v1, v0}, Lcom/google/android/gms/gcm/zzb;->zzjt(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/gcm/GcmTaskService$zza;->zzbfV:Lcom/google/android/gms/gcm/GcmTaskService;

    iget-object v1, p0, Lcom/google/android/gms/gcm/GcmTaskService$zza;->mTag:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/gcm/GcmTaskService;->zza(Lcom/google/android/gms/gcm/GcmTaskService;Ljava/lang/String;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "GcmTaskService"

    const-string v2, "Error reporting result of operation to scheduler for "

    iget-object v0, p0, Lcom/google/android/gms/gcm/GcmTaskService$zza;->mTag:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/gcm/GcmTaskService$zza;->zzbfV:Lcom/google/android/gms/gcm/GcmTaskService;

    iget-object v1, p0, Lcom/google/android/gms/gcm/GcmTaskService$zza;->mTag:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/gcm/GcmTaskService;->zza(Lcom/google/android/gms/gcm/GcmTaskService;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    :try_start_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/gcm/GcmTaskService$zza;->zzbfV:Lcom/google/android/gms/gcm/GcmTaskService;

    iget-object v2, p0, Lcom/google/android/gms/gcm/GcmTaskService$zza;->mTag:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/gcm/GcmTaskService;->zza(Lcom/google/android/gms/gcm/GcmTaskService;Ljava/lang/String;)V

    throw v0
.end method
