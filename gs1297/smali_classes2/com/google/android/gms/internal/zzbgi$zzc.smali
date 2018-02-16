.class public Lcom/google/android/gms/internal/zzbgi$zzc;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzbgi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zzc"
.end annotation


# instance fields
.field private final zzaux:Ljava/lang/String;

.field private final zzbKx:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzbgi$zze;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbKy:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzbgi$zza;",
            ">;>;"
        }
    .end annotation
.end field

.field private final zzbKz:I


# direct methods
.method private constructor <init>(Ljava/util/List;Ljava/util/Map;Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzbgi$zze;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzbgi$zza;",
            ">;>;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbgi$zzc;->zzbKx:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbgi$zzc;->zzbKy:Ljava/util/Map;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbgi$zzc;->zzaux:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/gms/internal/zzbgi$zzc;->zzbKz:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Ljava/util/Map;Ljava/lang/String;ILcom/google/android/gms/internal/zzbgi$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzbgi$zzc;-><init>(Ljava/util/List;Ljava/util/Map;Ljava/lang/String;I)V

    return-void
.end method

.method public static zzRW()Lcom/google/android/gms/internal/zzbgi$zzd;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzbgi$zzd;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbgi$zzd;-><init>(Lcom/google/android/gms/internal/zzbgi$1;)V

    return-object v0
.end method


# virtual methods
.method public getVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbgi$zzc;->zzaux:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbgi$zzc;->zzRr()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbgi$zzc;->zzbKy:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x11

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Rules: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "  Macros: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zzRX()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzbgi$zza;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbgi$zzc;->zzbKy:Ljava/util/Map;

    return-object v0
.end method

.method public zzRr()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzbgi$zze;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbgi$zzc;->zzbKx:Ljava/util/List;

    return-object v0
.end method
