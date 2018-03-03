.class public Lcom/google/android/gms/games/social/SocialInviteEntity;
.super Lcom/google/android/gms/games/internal/GamesAbstractSafeParcelable;

# interfaces
.implements Lcom/google/android/gms/games/social/SocialInvite;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/games/social/SocialInviteEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mVersionCode:I

.field private final zzaYi:Lcom/google/android/gms/games/PlayerEntity;

.field private final zzanR:I

.field private final zzbeP:J

.field private final zzbeX:Ljava/lang/String;

.field private final zzbeY:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/games/social/SocialInviteEntityCreator;

    invoke-direct {v0}, Lcom/google/android/gms/games/social/SocialInviteEntityCreator;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/social/SocialInviteEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Lcom/google/android/gms/games/PlayerEntity;IIJ)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/GamesAbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/games/social/SocialInviteEntity;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/games/social/SocialInviteEntity;->zzbeX:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/games/social/SocialInviteEntity;->zzaYi:Lcom/google/android/gms/games/PlayerEntity;

    iput p4, p0, Lcom/google/android/gms/games/social/SocialInviteEntity;->zzanR:I

    iput p5, p0, Lcom/google/android/gms/games/social/SocialInviteEntity;->zzbeY:I

    iput-wide p6, p0, Lcom/google/android/gms/games/social/SocialInviteEntity;->zzbeP:J

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/games/social/SocialInvite;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/GamesAbstractSafeParcelable;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/games/social/SocialInviteEntity;->mVersionCode:I

    invoke-interface {p1}, Lcom/google/android/gms/games/social/SocialInvite;->zzFM()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/social/SocialInviteEntity;->zzbeX:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/social/SocialInvite;->getPlayer()Lcom/google/android/gms/games/Player;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/games/social/SocialInviteEntity;->zzaYi:Lcom/google/android/gms/games/PlayerEntity;

    invoke-interface {p1}, Lcom/google/android/gms/games/social/SocialInvite;->getType()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/games/social/SocialInviteEntity;->zzanR:I

    invoke-interface {p1}, Lcom/google/android/gms/games/social/SocialInvite;->getDirection()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/games/social/SocialInviteEntity;->zzbeY:I

    invoke-interface {p1}, Lcom/google/android/gms/games/social/SocialInvite;->getLastModifiedTimestamp()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/games/social/SocialInviteEntity;->zzbeP:J

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/games/Player;->freeze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/PlayerEntity;

    goto :goto_0
.end method

.method static zza(Lcom/google/android/gms/games/social/SocialInvite;)I
    .locals 4

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-interface {p0}, Lcom/google/android/gms/games/social/SocialInvite;->zzFM()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-interface {p0}, Lcom/google/android/gms/games/social/SocialInvite;->getPlayer()Lcom/google/android/gms/games/Player;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-interface {p0}, Lcom/google/android/gms/games/social/SocialInvite;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-interface {p0}, Lcom/google/android/gms/games/social/SocialInvite;->getDirection()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-interface {p0}, Lcom/google/android/gms/games/social/SocialInvite;->getLastModifiedTimestamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method static zza(Lcom/google/android/gms/games/social/SocialInvite;Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    instance-of v2, p1, Lcom/google/android/gms/games/social/SocialInvite;

    if-nez v2, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eq p0, p1, :cond_0

    check-cast p1, Lcom/google/android/gms/games/social/SocialInvite;

    invoke-interface {p1}, Lcom/google/android/gms/games/social/SocialInvite;->zzFM()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/social/SocialInvite;->zzFM()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/social/SocialInvite;->getPlayer()Lcom/google/android/gms/games/Player;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/social/SocialInvite;->getPlayer()Lcom/google/android/gms/games/Player;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/social/SocialInvite;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/social/SocialInvite;->getType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/social/SocialInvite;->getDirection()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/social/SocialInvite;->getDirection()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/social/SocialInvite;->getLastModifiedTimestamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/social/SocialInvite;->getLastModifiedTimestamp()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method static zzb(Lcom/google/android/gms/games/social/SocialInvite;)Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzaa;->zzv(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "Social Invite ID"

    invoke-interface {p0}, Lcom/google/android/gms/games/social/SocialInvite;->zzFM()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "Player"

    invoke-interface {p0}, Lcom/google/android/gms/games/social/SocialInvite;->getPlayer()Lcom/google/android/gms/games/Player;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "Type"

    invoke-interface {p0}, Lcom/google/android/gms/games/social/SocialInvite;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "Direction"

    invoke-interface {p0}, Lcom/google/android/gms/games/social/SocialInvite;->getDirection()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "Last Modified Timestamp"

    invoke-interface {p0}, Lcom/google/android/gms/games/social/SocialInvite;->getLastModifiedTimestamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzaa$zza;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/google/android/gms/games/social/SocialInviteEntity;->zza(Lcom/google/android/gms/games/social/SocialInvite;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public synthetic freeze()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/games/social/SocialInviteEntity;->zzFN()Lcom/google/android/gms/games/social/SocialInvite;

    move-result-object v0

    return-object v0
.end method

.method public getDirection()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/games/social/SocialInviteEntity;->zzbeY:I

    return v0
.end method

.method public getLastModifiedTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/games/social/SocialInviteEntity;->zzbeP:J

    return-wide v0
.end method

.method public getPlayer()Lcom/google/android/gms/games/Player;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/social/SocialInviteEntity;->zzaYi:Lcom/google/android/gms/games/PlayerEntity;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/games/social/SocialInviteEntity;->zzanR:I

    return v0
.end method

.method public getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/games/social/SocialInviteEntity;->mVersionCode:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/games/social/SocialInviteEntity;->zza(Lcom/google/android/gms/games/social/SocialInvite;)I

    move-result v0

    return v0
.end method

.method public isDataValid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/games/social/SocialInviteEntity;->zzb(Lcom/google/android/gms/games/social/SocialInvite;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/games/social/SocialInviteEntityCreator;->zza(Lcom/google/android/gms/games/social/SocialInviteEntity;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzFM()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/social/SocialInviteEntity;->zzbeX:Ljava/lang/String;

    return-object v0
.end method

.method public zzFN()Lcom/google/android/gms/games/social/SocialInvite;
    .locals 0

    return-object p0
.end method
