.class Lcom/google/android/gms/internal/zzoa$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzoa;->zzcm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzUS:Lcom/google/android/gms/internal/zzjt;

.field final synthetic zzUT:Lcom/google/android/gms/internal/zzoa;

.field final synthetic zzUU:Lcom/google/android/gms/internal/zzoe;

.field final synthetic zztt:Lcom/google/android/gms/internal/zzdy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzoa;Lcom/google/android/gms/internal/zzjt;Lcom/google/android/gms/internal/zzdy;Lcom/google/android/gms/internal/zzoe;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzoa$2;->zzUT:Lcom/google/android/gms/internal/zzoa;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzoa$2;->zzUS:Lcom/google/android/gms/internal/zzjt;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzoa$2;->zztt:Lcom/google/android/gms/internal/zzdy;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzoa$2;->zzUU:Lcom/google/android/gms/internal/zzoe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzoa$2;->zzUS:Lcom/google/android/gms/internal/zzjt;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzoa$2;->zzUT:Lcom/google/android/gms/internal/zzoa;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzoa;->zza(Lcom/google/android/gms/internal/zzoa;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/zze;->zzA(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzoa$2;->zztt:Lcom/google/android/gms/internal/zzdy;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/gms/internal/zzoa$2;->zzUU:Lcom/google/android/gms/internal/zzoe;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzoa$2;->zzUT:Lcom/google/android/gms/internal/zzoa;

    invoke-static {v5}, Lcom/google/android/gms/internal/zzoa;->zzb(Lcom/google/android/gms/internal/zzoa;)Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/zzjt;->zza(Lcom/google/android/gms/dynamic/zzd;Lcom/google/android/gms/internal/zzdy;Ljava/lang/String;Lcom/google/android/gms/internal/zzoi;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    move-object v1, v0

    const-string v2, "Fail to initialize adapter "

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoa$2;->zzUT:Lcom/google/android/gms/internal/zzoa;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzoa;->zzc(Lcom/google/android/gms/internal/zzoa;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzpe;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoa$2;->zzUT:Lcom/google/android/gms/internal/zzoa;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzoa$2;->zzUT:Lcom/google/android/gms/internal/zzoa;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzoa;->zzc(Lcom/google/android/gms/internal/zzoa;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzoa;->zza(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method
