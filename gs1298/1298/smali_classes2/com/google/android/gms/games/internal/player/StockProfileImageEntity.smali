.class public final Lcom/google/android/gms/games/internal/player/StockProfileImageEntity;
.super Lcom/google/android/gms/games/internal/GamesAbstractSafeParcelable;

# interfaces
.implements Lcom/google/android/gms/games/internal/player/StockProfileImage;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/games/internal/player/StockProfileImageEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mVersionCode:I

.field private final zzaYq:Landroid/net/Uri;

.field private final zzbcR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/games/internal/player/StockProfileImageEntityCreator;

    invoke-direct {v0}, Lcom/google/android/gms/games/internal/player/StockProfileImageEntityCreator;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/internal/player/StockProfileImageEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/GamesAbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/games/internal/player/StockProfileImageEntity;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/games/internal/player/StockProfileImageEntity;->zzbcR:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/games/internal/player/StockProfileImageEntity;->zzaYq:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/games/internal/player/StockProfileImage;)V
    .locals 3

    const/4 v0, 0x1

    invoke-interface {p1}, Lcom/google/android/gms/games/internal/player/StockProfileImage;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/android/gms/games/internal/player/StockProfileImage;->zzDA()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/games/internal/player/StockProfileImageEntity;-><init>(ILjava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/games/internal/player/StockProfileImageEntity;-><init>(ILjava/lang/String;Landroid/net/Uri;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    instance-of v2, p1, Lcom/google/android/gms/games/internal/player/StockProfileImage;

    if-nez v2, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eq p1, p0, :cond_0

    check-cast p1, Lcom/google/android/gms/games/internal/player/StockProfileImage;

    iget-object v2, p0, Lcom/google/android/gms/games/internal/player/StockProfileImageEntity;->zzbcR:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/internal/player/StockProfileImage;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/games/internal/player/StockProfileImageEntity;->zzaYq:Landroid/net/Uri;

    invoke-interface {p1}, Lcom/google/android/gms/games/internal/player/StockProfileImage;->zzDA()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public synthetic freeze()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/player/StockProfileImageEntity;->zzFv()Lcom/google/android/gms/games/internal/player/StockProfileImage;

    move-result-object v0

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/player/StockProfileImageEntity;->zzbcR:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/games/internal/player/StockProfileImageEntity;->mVersionCode:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/games/internal/player/StockProfileImageEntity;->zzbcR:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/games/internal/player/StockProfileImageEntity;->zzaYq:Landroid/net/Uri;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isDataValid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzaa;->zzv(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "ImageId"

    iget-object v2, p0, Lcom/google/android/gms/games/internal/player/StockProfileImageEntity;->zzbcR:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "ImageUri"

    iget-object v2, p0, Lcom/google/android/gms/games/internal/player/StockProfileImageEntity;->zzaYq:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzaa$zza;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/games/internal/player/StockProfileImageEntityCreator;->zza(Lcom/google/android/gms/games/internal/player/StockProfileImageEntity;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzDA()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/player/StockProfileImageEntity;->zzaYq:Landroid/net/Uri;

    return-object v0
.end method

.method public zzFv()Lcom/google/android/gms/games/internal/player/StockProfileImage;
    .locals 0

    return-object p0
.end method
