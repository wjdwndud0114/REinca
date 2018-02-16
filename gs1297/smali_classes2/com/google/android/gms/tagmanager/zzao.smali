.class Lcom/google/android/gms/tagmanager/zzao;
.super Lcom/google/android/gms/tagmanager/zzcd;


# static fields
.field private static final ID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzag;->zzet:Lcom/google/android/gms/internal/zzag;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzag;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzao;->ID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/tagmanager/zzao;->ID:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/zzcd;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected zza(Lcom/google/android/gms/tagmanager/zzdl;Lcom/google/android/gms/tagmanager/zzdl;Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tagmanager/zzdl;",
            "Lcom/google/android/gms/tagmanager/zzdl;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzaj$zza;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tagmanager/zzdl;->zza(Lcom/google/android/gms/tagmanager/zzdl;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
