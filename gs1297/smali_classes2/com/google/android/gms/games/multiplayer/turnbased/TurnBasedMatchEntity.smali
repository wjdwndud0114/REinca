.class public final Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;
.super Lcom/google/android/gms/games/internal/GamesAbstractSafeParcelable;

# interfaces
.implements Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mVersion:I

.field private final mVersionCode:I

.field private final zzaYl:J

.field private final zzaZP:Ljava/lang/String;

.field private final zzacd:Ljava/lang/String;

.field private final zzbbQ:Lcom/google/android/gms/games/GameEntity;

.field private final zzbdA:J

.field private final zzbdD:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/games/multiplayer/ParticipantEntity;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbdE:I

.field private final zzbdU:Landroid/os/Bundle;

.field private final zzbdW:Ljava/lang/String;

.field private final zzbee:Ljava/lang/String;

.field private final zzbef:Ljava/lang/String;

.field private final zzbeg:I

.field private final zzbeh:[B

.field private final zzbei:Ljava/lang/String;

.field private final zzbej:[B

.field private final zzbek:I

.field private final zzbel:I

.field private final zzbem:Z

.field private final zzben:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntityCreator;

    invoke-direct {v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntityCreator;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/games/GameEntity;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;III[BLjava/util/ArrayList;Ljava/lang/String;[BILandroid/os/Bundle;IZLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/gms/games/GameEntity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "III[B",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/games/multiplayer/ParticipantEntity;",
            ">;",
            "Ljava/lang/String;",
            "[BI",
            "Landroid/os/Bundle;",
            "IZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/GamesAbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->zzbbQ:Lcom/google/android/gms/games/GameEntity;

    iput-object p3, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->zzaZP:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->zzbdW:Ljava/lang/String;

    iput-wide p5, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->zzbdA:J

    iput-object p7, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->zzbee:Ljava/lang/String;

    iput-wide p8, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->zzaYl:J

    iput-object p10, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->zzbef:Ljava/lang/String;

    iput p11, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->zzbeg:I

    move/from16 v0, p20

    iput v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->zzbel:I

    iput p12, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->zzbdE:I

    iput p13, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->mVersion:I

    iput-object p14, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->zzbeh:[B

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->zzbdD:Ljava/util/ArrayList;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->zzbei:Ljava/lang/String;

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->zzbej:[B

    move/from16 v0, p18

    iput v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->zzbek:I

    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->zzbdU:Landroid/os/Bundle;

    move/from16 v0, p21

    iput-boolean v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->zzbem:Z

    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->zzacd:Ljava/lang/String;

    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->zzben:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/GamesAbstractSafeParcelable;-><init>()V

    const/4 v1, 0x2

    iput v1, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->mVersionCode:I

    new-instance v1, Lcom/google/android/gms/games/GameEntity;

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getGame()Lcom/google/android/gms/games/Game;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/games/GameEntity;-><init>(Lcom/google/android/gms/games/Game;)V

    iput-object v1, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->zzbbQ:Lcom/google/android/gms/games/GameEntity;

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getMatchId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->zzaZP:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getCreatorId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->zzbdW:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getCreationTimestamp()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->zzbdA:J

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getLastUpdaterId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->zzbee:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getLastUpdatedTimestamp()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->zzaYl:J

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getPendingParticipantId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->zzbef:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getStatus()I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->zzbeg:I

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getTurnStatus()I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->zzbel:I

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getVariant()I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->zzbdE:I

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getVersion()I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->mVersion:I

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getRematchId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->zzbei:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getMatchNumber()I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->zzbek:I

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getAutoMatchCriteria()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->zzbdU:Landroid/os/Bundle;

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->isLocallyModified()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->zzbem:Z

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getDescription()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->zzacd:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getDescriptionParticipantId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->zzben:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getData()[B

    move-result-object v1

    if-nez v1, :cond_0

    iput-object v4, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->zzbeh:[B

    :goto_0
    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getPreviousMatchData()[B

    move-result-object v1

    if-nez v1, :cond_1

    iput-object v4, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->zzbej:[B

    :goto_1
    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getParticipants()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->zzbdD:Ljava/util/ArrayList;

    move v1, v0

    :goto_2
    if-ge v1, v3, :cond_2

    iget-object v4, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->zzbdD:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/multiplayer/Participant;

    invoke-interface {v0}, Lcom/google/android/gms/games/multiplayer/Participant;->freeze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_0
    array-length v2, v1

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->zzbeh:[B

    iget-object v2, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->zzbeh:[B

    array-length v3, v1

    invoke-static {v1, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_1
    array-length v2, v1

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->zzbej:[B

    iget-object v2, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->zzbej:[B

    array-length v3, v1

    invoke-static {v1, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method static zza(Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;)I
    .locals 4

    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getGame()Lcom/google/android/gms/games/Game;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getMatchId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getCreatorId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getCreationTimestamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getLastUpdaterId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getLastUpdatedTimestamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getPendingParticipantId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getStatus()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getTurnStatus()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getDescription()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getVariant()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getVersion()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getParticipants()Ljava/util/ArrayList;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getRematchId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getMatchNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getAutoMatchCriteria()Landroid/os/Bundle;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x10

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getAvailableAutoMatchSlots()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x11

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->isLocallyModified()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method static zza(Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;Ljava/lang/String;)I
    .locals 5

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getParticipants()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v0, 0x0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/multiplayer/Participant;

    invoke-interface {v0}, Lcom/google/android/gms/games/multiplayer/Participant;->getParticipantId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/games/multiplayer/Participant;->getStatus()I

    move-result v0

    return v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getMatchId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1d

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Participant "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not in match "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static zza(Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    instance-of v2, p1, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    if-nez v2, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eq p0, p1, :cond_0

    check-cast p1, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getGame()Lcom/google/android/gms/games/Game;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getGame()Lcom/google/android/gms/games/Game;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getMatchId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getMatchId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getCreatorId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getCreatorId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getCreationTimestamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getCreationTimestamp()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getLastUpdaterId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getLastUpdaterId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getLastUpdatedTimestamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getLastUpdatedTimestamp()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getPendingParticipantId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getPendingParticipantId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getStatus()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getStatus()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getTurnStatus()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getTurnStatus()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getVariant()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getVariant()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getVersion()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getVersion()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getParticipants()Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getParticipants()Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getRematchId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getRematchId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getMatchNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getMatchNumber()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getAutoMatchCriteria()Landroid/os/Bundle;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getAutoMatchCriteria()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getAvailableAutoMatchSlots()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getAvailableAutoMatchSlots()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->isLocallyModified()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->isLocallyModified()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto/16 :goto_0
.end method

.method static zzb(Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;)Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzaa;->zzv(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "Game"

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getGame()Lcom/google/android/gms/games/Game;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "MatchId"

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getMatchId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "CreatorId"

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getCreatorId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "CreationTimestamp"

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getCreationTimestamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "LastUpdaterId"

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getLastUpdaterId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "LastUpdatedTimestamp"

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getLastUpdatedTimestamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "PendingParticipantId"

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getPendingParticipantId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "MatchStatus"

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getStatus()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "TurnStatus"

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getTurnStatus()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "Description"

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "Variant"

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getVariant()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "Data"

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getData()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "Version"

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getVersion()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "Participants"

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getParticipants()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "RematchId"

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getRematchId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "PreviousData"

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getPreviousMatchData()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "MatchNumber"

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getMatchNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "AutoMatchCriteria"

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getAutoMatchCriteria()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "AvailableAutoMatchSlots"

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getAvailableAutoMatchSlots()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "LocallyModified"

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->isLocallyModified()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "DescriptionParticipantId"

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getDescriptionParticipantId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzaa$zza;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static zzb(Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getParticipants()Ljava/util/ArrayList;

    move-result-object v3

    const/4 v0, 0x0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_1

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/multiplayer/Participant;

    invoke-interface {v0}, Lcom/google/android/gms/games/multiplayer/Participant;->getPlayer()Lcom/google/android/gms/games/Player;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-interface {v5}, Lcom/google/android/gms/games/Player;->getPlayerId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/games/multiplayer/Participant;->getParticipantId()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method static zzc(Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;Ljava/lang/String;)Lcom/google/android/gms/games/multiplayer/Participant;
    .locals 5

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getParticipants()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v0, 0x0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/multiplayer/Participant;

    invoke-interface {v0}, Lcom/google/android/gms/games/multiplayer/Participant;->getParticipantId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getMatchId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1d

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Participant "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not in match "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static zzc(Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getParticipants()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/multiplayer/Participant;

    invoke-interface {v0}, Lcom/google/android/gms/games/multiplayer/Participant;->getParticipantId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-object v4
.end method


# virtual methods
.method public canRematch()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->zzbeg:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->zzbei:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->zza(Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public freeze()Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic freeze()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->freeze()Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    move-result-object v0

    return-object v0
.end method

.method public getAutoMatchCriteria()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->zzbdU:Landroid/os/Bundle;

    return-object v0
.end method

.method public getAvailableAutoMatchSlots()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->zzbdU:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->zzbdU:Landroid/os/Bundle;

    const-string v1, "max_automatch_players"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getCreationTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->zzbdA:J

    return-wide v0
.end method

.method public getCreatorId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->zzbdW:Ljava/lang/String;

    return-object v0
.end method

.method public getData()[B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->zzbeh:[B

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->zzacd:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription(Landroid/database/CharArrayBuffer;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->zzacd:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/util/zzg;->zzb(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V

    return-void
.end method

.method public getDescriptionParticipant()Lcom/google/android/gms/games/multiplayer/Participant;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->getDescriptionParticipantId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->getParticipant(Ljava/lang/String;)Lcom/google/android/gms/games/multiplayer/Participant;

    move-result-object v0

    goto :goto_0
.end method

.method public getDescriptionParticipantId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->zzben:Ljava/lang/String;

    return-object v0
.end method

.method public getGame()Lcom/google/android/gms/games/Game;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->zzbbQ:Lcom/google/android/gms/games/GameEntity;

    return-object v0
.end method

.method public getLastUpdatedTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->zzaYl:J

    return-wide v0
.end method

.method public getLastUpdaterId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->zzbee:Ljava/lang/String;

    return-object v0
.end method

.method public getMatchId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->zzaZP:Ljava/lang/String;

    return-object v0
.end method

.method public getMatchNumber()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->zzbek:I

    return v0
.end method

.method public getParticipant(Ljava/lang/String;)Lcom/google/android/gms/games/multiplayer/Participant;
    .locals 1

    invoke-static {p0, p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->zzc(Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;Ljava/lang/String;)Lcom/google/android/gms/games/multiplayer/Participant;

    move-result-object v0

    return-object v0
.end method

.method public getParticipantId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->zzb(Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParticipantIds()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->zzc(Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getParticipantStatus(Ljava/lang/String;)I
    .locals 1

    invoke-static {p0, p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->zza(Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getParticipants()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/games/multiplayer/Participant;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->zzbdD:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getPendingParticipantId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->zzbef:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviousMatchData()[B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->zzbej:[B

    return-object v0
.end method

.method public getRematchId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->zzbei:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->zzbeg:I

    return v0
.end method

.method public getTurnStatus()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->zzbel:I

    return v0
.end method

.method public getVariant()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->zzbdE:I

    return v0
.end method

.method public getVersion()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->mVersion:I

    return v0
.end method

.method public getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->mVersionCode:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->zza(Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;)I

    move-result v0

    return v0
.end method

.method public isDataValid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isLocallyModified()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->zzbem:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->zzb(Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntityCreator;->zza(Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;Landroid/os/Parcel;I)V

    return-void
.end method
