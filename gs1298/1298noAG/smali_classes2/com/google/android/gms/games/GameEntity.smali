.class public final Lcom/google/android/gms/games/GameEntity;
.super Lcom/google/android/gms/games/internal/GamesDowngradeableSafeParcel;

# interfaces
.implements Lcom/google/android/gms/games/Game;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/games/GameEntity$GameEntityCreatorCompat;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/games/GameEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mVersionCode:I

.field private final zzOD:Z

.field private final zzaWT:Ljava/lang/String;

.field private final zzaWU:Ljava/lang/String;

.field private final zzaWV:Ljava/lang/String;

.field private final zzaWW:Landroid/net/Uri;

.field private final zzaWX:Landroid/net/Uri;

.field private final zzaWY:Landroid/net/Uri;

.field private final zzaWZ:Z

.field private final zzaXa:Z

.field private final zzaXb:Ljava/lang/String;

.field private final zzaXc:I

.field private final zzaXd:I

.field private final zzaXe:I

.field private final zzaXf:Z

.field private final zzaXg:Z

.field private final zzaXh:Ljava/lang/String;

.field private final zzaXi:Ljava/lang/String;

.field private final zzaXj:Ljava/lang/String;

.field private final zzaXk:Z

.field private final zzaXl:Z

.field private final zzaXm:Ljava/lang/String;

.field private final zzaXn:Z

.field private final zzacd:Ljava/lang/String;

.field private final zzaiX:Ljava/lang/String;

.field private final zzalR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/games/GameEntity$GameEntityCreatorCompat;

    invoke-direct {v0}, Lcom/google/android/gms/games/GameEntity$GameEntityCreatorCompat;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/GameEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;ZZLjava/lang/String;IIIZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Z)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/GamesDowngradeableSafeParcel;-><init>()V

    iput p1, p0, Lcom/google/android/gms/games/GameEntity;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/games/GameEntity;->zzalR:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/games/GameEntity;->zzaiX:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/games/GameEntity;->zzaWT:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/games/GameEntity;->zzaWU:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/games/GameEntity;->zzacd:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/games/GameEntity;->zzaWV:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/games/GameEntity;->zzaWW:Landroid/net/Uri;

    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/google/android/gms/games/GameEntity;->zzaXh:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/games/GameEntity;->zzaWX:Landroid/net/Uri;

    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/google/android/gms/games/GameEntity;->zzaXi:Ljava/lang/String;

    iput-object p10, p0, Lcom/google/android/gms/games/GameEntity;->zzaWY:Landroid/net/Uri;

    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/google/android/gms/games/GameEntity;->zzaXj:Ljava/lang/String;

    iput-boolean p11, p0, Lcom/google/android/gms/games/GameEntity;->zzaWZ:Z

    iput-boolean p12, p0, Lcom/google/android/gms/games/GameEntity;->zzaXa:Z

    iput-object p13, p0, Lcom/google/android/gms/games/GameEntity;->zzaXb:Ljava/lang/String;

    iput p14, p0, Lcom/google/android/gms/games/GameEntity;->zzaXc:I

    move/from16 v0, p15

    iput v0, p0, Lcom/google/android/gms/games/GameEntity;->zzaXd:I

    move/from16 v0, p16

    iput v0, p0, Lcom/google/android/gms/games/GameEntity;->zzaXe:I

    move/from16 v0, p17

    iput-boolean v0, p0, Lcom/google/android/gms/games/GameEntity;->zzaXf:Z

    move/from16 v0, p18

    iput-boolean v0, p0, Lcom/google/android/gms/games/GameEntity;->zzaXg:Z

    move/from16 v0, p22

    iput-boolean v0, p0, Lcom/google/android/gms/games/GameEntity;->zzOD:Z

    move/from16 v0, p23

    iput-boolean v0, p0, Lcom/google/android/gms/games/GameEntity;->zzaXk:Z

    move/from16 v0, p24

    iput-boolean v0, p0, Lcom/google/android/gms/games/GameEntity;->zzaXl:Z

    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/google/android/gms/games/GameEntity;->zzaXm:Ljava/lang/String;

    move/from16 v0, p26

    iput-boolean v0, p0, Lcom/google/android/gms/games/GameEntity;->zzaXn:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/games/Game;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/GamesDowngradeableSafeParcel;-><init>()V

    const/4 v0, 0x7

    iput v0, p0, Lcom/google/android/gms/games/GameEntity;->mVersionCode:I

    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/GameEntity;->zzalR:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->getPrimaryCategory()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/GameEntity;->zzaWT:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->getSecondaryCategory()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/GameEntity;->zzaWU:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/GameEntity;->zzacd:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->getDeveloperName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/GameEntity;->zzaWV:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/GameEntity;->zzaiX:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->getIconImageUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/GameEntity;->zzaWW:Landroid/net/Uri;

    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->getIconImageUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/GameEntity;->zzaXh:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->getHiResImageUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/GameEntity;->zzaWX:Landroid/net/Uri;

    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->getHiResImageUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/GameEntity;->zzaXi:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->getFeaturedImageUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/GameEntity;->zzaWY:Landroid/net/Uri;

    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->getFeaturedImageUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/GameEntity;->zzaXj:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->zzCV()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/games/GameEntity;->zzaWZ:Z

    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->zzCX()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/games/GameEntity;->zzaXa:Z

    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->zzCY()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/GameEntity;->zzaXb:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/games/GameEntity;->zzaXc:I

    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->getAchievementTotalCount()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/games/GameEntity;->zzaXd:I

    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->getLeaderboardCount()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/games/GameEntity;->zzaXe:I

    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->isRealTimeMultiplayerEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/games/GameEntity;->zzaXf:Z

    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->isTurnBasedMultiplayerEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/games/GameEntity;->zzaXg:Z

    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->isMuted()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/games/GameEntity;->zzOD:Z

    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->zzCW()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/games/GameEntity;->zzaXk:Z

    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->areSnapshotsEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/games/GameEntity;->zzaXl:Z

    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->getThemeColor()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/GameEntity;->zzaXm:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->hasGamepadSupport()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/games/GameEntity;->zzaXn:Z

    return-void
.end method

.method static synthetic zzDa()Ljava/lang/Integer;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/games/GameEntity;->zzxo()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static zza(Lcom/google/android/gms/games/Game;)I
    .locals 3

    const/16 v0, 0x15

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->getApplicationId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->getPrimaryCategory()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->getSecondaryCategory()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->getDescription()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->getDeveloperName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->getIconImageUri()Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->getHiResImageUri()Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->getFeaturedImageUri()Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->zzCV()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->zzCX()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->zzCY()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->getAchievementTotalCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->getLeaderboardCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->isRealTimeMultiplayerEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->isTurnBasedMultiplayerEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x10

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->isMuted()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x11

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->zzCW()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x12

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->areSnapshotsEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x13

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->getThemeColor()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x14

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->hasGamepadSupport()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method static zza(Lcom/google/android/gms/games/Game;Ljava/lang/Object;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    instance-of v0, p1, Lcom/google/android/gms/games/Game;

    if-nez v0, :cond_1

    move v1, v2

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eq p0, p1, :cond_0

    check-cast p1, Lcom/google/android/gms/games/Game;

    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->getApplicationId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->getPrimaryCategory()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->getPrimaryCategory()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->getSecondaryCategory()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->getSecondaryCategory()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->getDeveloperName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->getDeveloperName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->getIconImageUri()Landroid/net/Uri;

    move-result-object v0

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->getIconImageUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->getHiResImageUri()Landroid/net/Uri;

    move-result-object v0

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->getHiResImageUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->getFeaturedImageUri()Landroid/net/Uri;

    move-result-object v0

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->getFeaturedImageUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->zzCV()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->zzCV()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->zzCX()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->zzCX()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->zzCY()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->zzCY()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->getAchievementTotalCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->getAchievementTotalCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->getLeaderboardCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->getLeaderboardCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->isRealTimeMultiplayerEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->isRealTimeMultiplayerEnabled()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->isTurnBasedMultiplayerEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->isTurnBasedMultiplayerEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->isMuted()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->isMuted()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->zzCW()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->zzCW()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->areSnapshotsEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->areSnapshotsEnabled()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->getThemeColor()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->getThemeColor()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->hasGamepadSupport()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->hasGamepadSupport()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    move v1, v2

    goto/16 :goto_0

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method static zzb(Lcom/google/android/gms/games/Game;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzaa;->zzv(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "ApplicationId"

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->getApplicationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "DisplayName"

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "PrimaryCategory"

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->getPrimaryCategory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "SecondaryCategory"

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->getSecondaryCategory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "Description"

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "DeveloperName"

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->getDeveloperName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "IconImageUri"

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->getIconImageUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "IconImageUrl"

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->getIconImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "HiResImageUri"

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->getHiResImageUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "HiResImageUrl"

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->getHiResImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "FeaturedImageUri"

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->getFeaturedImageUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "FeaturedImageUrl"

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->getFeaturedImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "PlayEnabledGame"

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->zzCV()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "InstanceInstalled"

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->zzCX()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "InstancePackageName"

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->zzCY()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "AchievementTotalCount"

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->getAchievementTotalCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "LeaderboardCount"

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->getLeaderboardCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "RealTimeMultiplayerEnabled"

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->isRealTimeMultiplayerEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "TurnBasedMultiplayerEnabled"

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->isTurnBasedMultiplayerEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "AreSnapshotsEnabled"

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->areSnapshotsEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "ThemeColor"

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->getThemeColor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "HasGamepadSupport"

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->hasGamepadSupport()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzaa$zza;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic zze(Ljava/lang/Integer;)Z
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/games/GameEntity;->zzf(Ljava/lang/Integer;)Z

    move-result v0

    return v0
.end method

.method static synthetic zzep(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/games/GameEntity;->zzdp(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public areSnapshotsEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/games/GameEntity;->zzaXl:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/google/android/gms/games/GameEntity;->zza(Lcom/google/android/gms/games/Game;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public freeze()Lcom/google/android/gms/games/Game;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic freeze()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/games/GameEntity;->freeze()Lcom/google/android/gms/games/Game;

    move-result-object v0

    return-object v0
.end method

.method public getAchievementTotalCount()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/games/GameEntity;->zzaXd:I

    return v0
.end method

.method public getApplicationId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/GameEntity;->zzalR:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/GameEntity;->zzacd:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription(Landroid/database/CharArrayBuffer;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/GameEntity;->zzacd:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/util/zzg;->zzb(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V

    return-void
.end method

.method public getDeveloperName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/GameEntity;->zzaWV:Ljava/lang/String;

    return-object v0
.end method

.method public getDeveloperName(Landroid/database/CharArrayBuffer;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/GameEntity;->zzaWV:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/util/zzg;->zzb(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V

    return-void
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/GameEntity;->zzaiX:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName(Landroid/database/CharArrayBuffer;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/GameEntity;->zzaiX:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/util/zzg;->zzb(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V

    return-void
.end method

.method public getFeaturedImageUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/GameEntity;->zzaWY:Landroid/net/Uri;

    return-object v0
.end method

.method public getFeaturedImageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/GameEntity;->zzaXj:Ljava/lang/String;

    return-object v0
.end method

.method public getHiResImageUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/GameEntity;->zzaWX:Landroid/net/Uri;

    return-object v0
.end method

.method public getHiResImageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/GameEntity;->zzaXi:Ljava/lang/String;

    return-object v0
.end method

.method public getIconImageUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/GameEntity;->zzaWW:Landroid/net/Uri;

    return-object v0
.end method

.method public getIconImageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/GameEntity;->zzaXh:Ljava/lang/String;

    return-object v0
.end method

.method public getLeaderboardCount()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/games/GameEntity;->zzaXe:I

    return v0
.end method

.method public getPrimaryCategory()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/GameEntity;->zzaWT:Ljava/lang/String;

    return-object v0
.end method

.method public getSecondaryCategory()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/GameEntity;->zzaWU:Ljava/lang/String;

    return-object v0
.end method

.method public getThemeColor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/GameEntity;->zzaXm:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/games/GameEntity;->mVersionCode:I

    return v0
.end method

.method public hasGamepadSupport()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/games/GameEntity;->zzaXn:Z

    return v0
.end method

.method public hashCode()I
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/games/GameEntity;->zza(Lcom/google/android/gms/games/Game;)I

    move-result v0

    return v0
.end method

.method public isDataValid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isMuted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/games/GameEntity;->zzOD:Z

    return v0
.end method

.method public isRealTimeMultiplayerEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/games/GameEntity;->zzaXf:Z

    return v0
.end method

.method public isTurnBasedMultiplayerEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/games/GameEntity;->zzaXg:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/games/GameEntity;->zzb(Lcom/google/android/gms/games/Game;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/games/GameEntityCreator;->zza(Lcom/google/android/gms/games/GameEntity;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzCV()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/games/GameEntity;->zzaWZ:Z

    return v0
.end method

.method public zzCW()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/games/GameEntity;->zzaXk:Z

    return v0
.end method

.method public zzCX()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/games/GameEntity;->zzaXa:Z

    return v0
.end method

.method public zzCY()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/GameEntity;->zzaXb:Ljava/lang/String;

    return-object v0
.end method

.method public zzCZ()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/games/GameEntity;->zzaXc:I

    return v0
.end method
