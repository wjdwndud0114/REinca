.class Lcom/google/android/gms/internal/zzaad$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/PendingResult$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzaad;->zza(Lcom/google/android/gms/internal/zzzx;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzazE:Lcom/google/android/gms/internal/zzzx;

.field final synthetic zzazF:Lcom/google/android/gms/internal/zzaad;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaad;Lcom/google/android/gms/internal/zzzx;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaad$1;->zzazF:Lcom/google/android/gms/internal/zzaad;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzaad$1;->zzazE:Lcom/google/android/gms/internal/zzzx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzx(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaad$1;->zzazF:Lcom/google/android/gms/internal/zzaad;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaad;->zza(Lcom/google/android/gms/internal/zzaad;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaad$1;->zzazE:Lcom/google/android/gms/internal/zzzx;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
