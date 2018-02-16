.class public Lcom/google/android/gms/internal/zzbgi$zzb;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzbgi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zzb"
.end annotation


# instance fields
.field private zzbFS:Lcom/google/android/gms/internal/zzaj$zza;

.field private final zzbKA:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzaj$zza;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbgi$zzb;->zzbKA:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzbgi$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbgi$zzb;-><init>()V

    return-void
.end method


# virtual methods
.method public zzRV()Lcom/google/android/gms/internal/zzbgi$zza;
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/zzbgi$zza;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbgi$zzb;->zzbKA:Ljava/util/Map;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbgi$zzb;->zzbFS:Lcom/google/android/gms/internal/zzaj$zza;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzbgi$zza;-><init>(Ljava/util/Map;Lcom/google/android/gms/internal/zzaj$zza;Lcom/google/android/gms/internal/zzbgi$1;)V

    return-object v0
.end method

.method public zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzaj$zza;)Lcom/google/android/gms/internal/zzbgi$zzb;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbgi$zzb;->zzbKA:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public zzo(Lcom/google/android/gms/internal/zzaj$zza;)Lcom/google/android/gms/internal/zzbgi$zzb;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbgi$zzb;->zzbFS:Lcom/google/android/gms/internal/zzaj$zza;

    return-object p0
.end method
