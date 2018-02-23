.class Lcom/google/android/gms/tagmanager/zzw;
.super Lcom/google/android/gms/tagmanager/zzam;


# static fields
.field private static final ID:Ljava/lang/String;

.field private static final NAME:Ljava/lang/String;

.field private static final zzbDI:Ljava/lang/String;


# instance fields
.field private final zzbCT:Lcom/google/android/gms/tagmanager/DataLayer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzag;->zzdk:Lcom/google/android/gms/internal/zzag;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzag;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzw;->ID:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/zzah;->zzik:Lcom/google/android/gms/internal/zzah;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzah;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzw;->NAME:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/zzah;->zzgP:Lcom/google/android/gms/internal/zzah;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzah;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzw;->zzbDI:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/tagmanager/DataLayer;)V
    .locals 4

    sget-object v0, Lcom/google/android/gms/tagmanager/zzw;->ID:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    sget-object v3, Lcom/google/android/gms/tagmanager/zzw;->NAME:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/tagmanager/zzam;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzw;->zzbCT:Lcom/google/android/gms/tagmanager/DataLayer;

    return-void
.end method


# virtual methods
.method public zzOw()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public zzY(Ljava/util/Map;)Lcom/google/android/gms/internal/zzaj$zza;
    .locals 2
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

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzw;->zzbCT:Lcom/google/android/gms/tagmanager/DataLayer;

    sget-object v0, Lcom/google/android/gms/tagmanager/zzw;->NAME:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaj$zza;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdm;->zze(Lcom/google/android/gms/internal/zzaj$zza;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/tagmanager/DataLayer;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/gms/tagmanager/zzw;->zzbDI:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaj$zza;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/tagmanager/zzdm;->zzQm()Lcom/google/android/gms/internal/zzaj$zza;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdm;->zzR(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzaj$zza;

    move-result-object v0

    goto :goto_0
.end method
