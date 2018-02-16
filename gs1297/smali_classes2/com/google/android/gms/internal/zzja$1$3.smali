.class Lcom/google/android/gms/internal/zzja$1$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzhx;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzja$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzJl:Lcom/google/android/gms/internal/zzix;

.field final synthetic zzJm:Lcom/google/android/gms/internal/zzja$1;

.field final synthetic zzJp:Lcom/google/android/gms/internal/zzpu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzja$1;Lcom/google/android/gms/internal/zzix;Lcom/google/android/gms/internal/zzpu;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzja$1$3;->zzJm:Lcom/google/android/gms/internal/zzja$1;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzja$1$3;->zzJl:Lcom/google/android/gms/internal/zzix;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzja$1$3;->zzJp:Lcom/google/android/gms/internal/zzpu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzqp;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzqp;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzja$1$3;->zzJm:Lcom/google/android/gms/internal/zzja$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzja$1;->zzJk:Lcom/google/android/gms/internal/zzja;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzja;->zzc(Lcom/google/android/gms/internal/zzja;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    const-string v0, "JS Engine is requesting an update"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpe;->zzbd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzja$1$3;->zzJm:Lcom/google/android/gms/internal/zzja$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzja$1;->zzJk:Lcom/google/android/gms/internal/zzja;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzja;->zze(Lcom/google/android/gms/internal/zzja;)I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Starting reload."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpe;->zzbd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzja$1$3;->zzJm:Lcom/google/android/gms/internal/zzja$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzja$1;->zzJk:Lcom/google/android/gms/internal/zzja;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzja;->zza(Lcom/google/android/gms/internal/zzja;I)I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzja$1$3;->zzJm:Lcom/google/android/gms/internal/zzja$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzja$1;->zzJk:Lcom/google/android/gms/internal/zzja;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzja$1$3;->zzJm:Lcom/google/android/gms/internal/zzja$1;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzja$1;->zzJi:Lcom/google/android/gms/internal/zzav;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzja;->zzb(Lcom/google/android/gms/internal/zzav;)Lcom/google/android/gms/internal/zzja$zzd;

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzja$1$3;->zzJl:Lcom/google/android/gms/internal/zzix;

    const-string v3, "/requestReload"

    iget-object v0, p0, Lcom/google/android/gms/internal/zzja$1$3;->zzJp:Lcom/google/android/gms/internal/zzpu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzpu;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzhx;

    invoke-interface {v2, v3, v0}, Lcom/google/android/gms/internal/zzix;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzhx;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
