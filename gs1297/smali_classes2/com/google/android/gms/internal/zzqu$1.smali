.class Lcom/google/android/gms/internal/zzqu$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzqu;->zzd(Ljava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzZD:Ljava/util/Map;

.field final synthetic zzZE:Lcom/google/android/gms/internal/zzqu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzqu;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqu$1;->zzZE:Lcom/google/android/gms/internal/zzqu;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzqu$1;->zzZD:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqu$1;->zzZE:Lcom/google/android/gms/internal/zzqu;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqu;->zzb(Lcom/google/android/gms/internal/zzqu;)Lcom/google/android/gms/internal/zzqp;

    move-result-object v0

    const-string v1, "pubVideoCmd"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqu$1;->zzZD:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzqp;->zza(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
