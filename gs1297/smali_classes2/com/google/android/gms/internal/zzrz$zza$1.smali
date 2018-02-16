.class Lcom/google/android/gms/internal/zzrz$zza$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzrz$zza;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzadr:Lcom/google/android/gms/internal/zzsu;

.field final synthetic zzads:Lcom/google/android/gms/internal/zzrz$zza;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzrz$zza;Lcom/google/android/gms/internal/zzsu;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzrz$zza$1;->zzads:Lcom/google/android/gms/internal/zzrz$zza;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzrz$zza$1;->zzadr:Lcom/google/android/gms/internal/zzsu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrz$zza$1;->zzads:Lcom/google/android/gms/internal/zzrz$zza;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzrz$zza;->zzado:Lcom/google/android/gms/internal/zzrz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrz;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrz$zza$1;->zzads:Lcom/google/android/gms/internal/zzrz$zza;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzrz$zza;->zzado:Lcom/google/android/gms/internal/zzrz;

    const-string v1, "Connected to service after a timeout"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzrz;->zzbP(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrz$zza$1;->zzads:Lcom/google/android/gms/internal/zzrz$zza;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzrz$zza;->zzado:Lcom/google/android/gms/internal/zzrz;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrz$zza$1;->zzadr:Lcom/google/android/gms/internal/zzsu;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzrz;->zza(Lcom/google/android/gms/internal/zzrz;Lcom/google/android/gms/internal/zzsu;)V

    :cond_0
    return-void
.end method
