.class final Lcom/google/android/gms/drive/events/DriveEventService$zzb;
.super Lcom/google/android/gms/internal/zzaim$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/drive/events/DriveEventService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "zzb"
.end annotation


# instance fields
.field final synthetic zzaKy:Lcom/google/android/gms/drive/events/DriveEventService;


# direct methods
.method constructor <init>(Lcom/google/android/gms/drive/events/DriveEventService;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/drive/events/DriveEventService$zzb;->zzaKy:Lcom/google/android/gms/drive/events/DriveEventService;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaim$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public zzc(Lcom/google/android/gms/internal/zzajc;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/drive/events/DriveEventService$zzb;->zzaKy:Lcom/google/android/gms/drive/events/DriveEventService;

    monitor-enter v1

    :try_start_0
    const-string v0, "DriveEventService"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x9

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "onEvent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzahp;->zzD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/drive/events/DriveEventService$zzb;->zzaKy:Lcom/google/android/gms/drive/events/DriveEventService;

    invoke-static {v0}, Lcom/google/android/gms/drive/events/DriveEventService;->zza(Lcom/google/android/gms/drive/events/DriveEventService;)V

    iget-object v0, p0, Lcom/google/android/gms/drive/events/DriveEventService$zzb;->zzaKy:Lcom/google/android/gms/drive/events/DriveEventService;

    iget-object v0, v0, Lcom/google/android/gms/drive/events/DriveEventService;->zzaKv:Lcom/google/android/gms/drive/events/DriveEventService$zza;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/drive/events/DriveEventService$zzb;->zzaKy:Lcom/google/android/gms/drive/events/DriveEventService;

    iget-object v0, v0, Lcom/google/android/gms/drive/events/DriveEventService;->zzaKv:Lcom/google/android/gms/drive/events/DriveEventService$zza;

    invoke-static {v0, p1}, Lcom/google/android/gms/drive/events/DriveEventService$zza;->zza(Lcom/google/android/gms/drive/events/DriveEventService$zza;Lcom/google/android/gms/internal/zzajc;)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/drive/events/DriveEventService$zzb;->zzaKy:Lcom/google/android/gms/drive/events/DriveEventService;

    iget-object v2, v2, Lcom/google/android/gms/drive/events/DriveEventService;->zzaKv:Lcom/google/android/gms/drive/events/DriveEventService$zza;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/drive/events/DriveEventService$zza;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    const-string v0, "DriveEventService"

    const-string v2, "Receiving event before initialize is completed."

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzahp;->zzF(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
