.class abstract Lcom/google/android/gms/tagmanager/zzdk;
.super Lcom/google/android/gms/tagmanager/zzam;


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/tagmanager/zzam;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public zzOw()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public zzY(Ljava/util/Map;)Lcom/google/android/gms/internal/zzaj$zza;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzaj$zza;",
            ">;)",
            "Lcom/google/android/gms/internal/zzaj$zza;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/tagmanager/zzdk;->zzaa(Ljava/util/Map;)V

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzdm;->zzQm()Lcom/google/android/gms/internal/zzaj$zza;

    move-result-object v0

    return-object v0
.end method

.method public abstract zzaa(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzaj$zza;",
            ">;)V"
        }
    .end annotation
.end method
