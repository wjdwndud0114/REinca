.class Lcom/google/android/gms/internal/zzlv$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzhx;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzlv;->zzj(Lcom/google/android/gms/internal/zzqp;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzQE:Lcom/google/android/gms/internal/zzlv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzlv;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzlv$2;->zzQE:Lcom/google/android/gms/internal/zzlv;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlv$2;->zzQE:Lcom/google/android/gms/internal/zzlv;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzlv;->zza(Lcom/google/android/gms/internal/zzlv;)Lcom/google/android/gms/ads/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzr;->zzcr()V

    return-void
.end method
