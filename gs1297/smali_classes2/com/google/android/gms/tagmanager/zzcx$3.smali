.class Lcom/google/android/gms/tagmanager/zzcx$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/zzcx$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/tagmanager/zzcx;->zza(Ljava/lang/String;Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;Lcom/google/android/gms/tagmanager/zzcw;)Lcom/google/android/gms/tagmanager/zzce;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbFN:Ljava/util/Map;

.field final synthetic zzbFO:Ljava/util/Map;

.field final synthetic zzbFP:Ljava/util/Map;

.field final synthetic zzbFQ:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/zzcx;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/zzcx$3;->zzbFN:Ljava/util/Map;

    iput-object p3, p0, Lcom/google/android/gms/tagmanager/zzcx$3;->zzbFO:Ljava/util/Map;

    iput-object p4, p0, Lcom/google/android/gms/tagmanager/zzcx$3;->zzbFP:Ljava/util/Map;

    iput-object p5, p0, Lcom/google/android/gms/tagmanager/zzcx$3;->zzbFQ:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzbgi$zze;Ljava/util/Set;Ljava/util/Set;Lcom/google/android/gms/tagmanager/zzcs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbgi$zze;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/zzbgi$zza;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/zzbgi$zza;",
            ">;",
            "Lcom/google/android/gms/tagmanager/zzcs;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcx$3;->zzbFN:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzcx$3;->zzbFO:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-interface {p2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p4}, Lcom/google/android/gms/tagmanager/zzcs;->zzPo()Lcom/google/android/gms/tagmanager/zzcq;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcx$3;->zzbFP:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzcx$3;->zzbFQ:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_1

    invoke-interface {p3, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p4}, Lcom/google/android/gms/tagmanager/zzcs;->zzPp()Lcom/google/android/gms/tagmanager/zzcq;

    :cond_1
    return-void
.end method
