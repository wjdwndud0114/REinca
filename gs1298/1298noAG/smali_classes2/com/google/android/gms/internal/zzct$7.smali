.class Lcom/google/android/gms/internal/zzct$7;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzhx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzwF:Lcom/google/android/gms/internal/zzct;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzct;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzct$7;->zzwF:Lcom/google/android/gms/internal/zzct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzqp;Ljava/util/Map;)V
    .locals 1
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

    iget-object v0, p0, Lcom/google/android/gms/internal/zzct$7;->zzwF:Lcom/google/android/gms/internal/zzct;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzct;->zza(Lcom/google/android/gms/internal/zzct;)Lcom/google/android/gms/internal/zzcq;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/zzcq;->zzb(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzct$7;->zzwF:Lcom/google/android/gms/internal/zzct;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzct;->zza(Lcom/google/android/gms/internal/zzct;)Lcom/google/android/gms/internal/zzcq;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/zzcq;->zzc(Ljava/util/Map;)V

    goto :goto_0
.end method
