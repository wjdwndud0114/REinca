.class public Lcom/google/android/gms/games/internal/player/StockProfileImageRef;
.super Lcom/google/android/gms/common/data/zzc;

# interfaces
.implements Lcom/google/android/gms/games/internal/player/StockProfileImage;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/zzc;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public synthetic freeze()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/player/StockProfileImageRef;->zzFv()Lcom/google/android/gms/games/internal/player/StockProfileImage;

    move-result-object v0

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    const-string v0, "image_url"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/player/StockProfileImageRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/player/StockProfileImageRef;->freeze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/player/StockProfileImage;

    check-cast v0, Lcom/google/android/gms/games/internal/player/StockProfileImageEntity;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/games/internal/player/StockProfileImageEntity;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzDA()Landroid/net/Uri;
    .locals 1

    const-string v0, "image_uri"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/player/StockProfileImageRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public zzFv()Lcom/google/android/gms/games/internal/player/StockProfileImage;
    .locals 1

    new-instance v0, Lcom/google/android/gms/games/internal/player/StockProfileImageEntity;

    invoke-direct {v0, p0}, Lcom/google/android/gms/games/internal/player/StockProfileImageEntity;-><init>(Lcom/google/android/gms/games/internal/player/StockProfileImage;)V

    return-object v0
.end method
