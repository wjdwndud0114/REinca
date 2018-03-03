.class public final Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;
.super Lcom/google/android/gms/games/internal/GamesAbstractSafeParcelable;

# interfaces
.implements Lcom/google/android/gms/games/appcontent/AppContentSection;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/games/appcontent/AppContentActionEntity;",
            ">;"
        }
    .end annotation
.end field

.field private final mExtras:Landroid/os/Bundle;

.field private final mVersionCode:I

.field private final zzGu:Ljava/lang/String;

.field private final zzTW:Ljava/lang/String;

.field private final zzaYE:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/games/appcontent/AppContentCardEntity;",
            ">;"
        }
    .end annotation
.end field

.field private final zzaYF:Ljava/lang/String;

.field private final zzaYw:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/games/appcontent/AppContentAnnotationEntity;",
            ">;"
        }
    .end annotation
.end field

.field private final zzaYy:Ljava/lang/String;

.field private final zzalD:Ljava/lang/String;

.field private final zzasu:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntityCreator;

    invoke-direct {v0}, Lcom/google/android/gms/games/appcontent/AppContentSectionEntityCreator;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/games/appcontent/AppContentActionEntity;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/games/appcontent/AppContentCardEntity;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/games/appcontent/AppContentAnnotationEntity;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/GamesAbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->mActions:Ljava/util/ArrayList;

    iput-object p11, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->zzaYw:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->zzaYE:Ljava/util/ArrayList;

    iput-object p10, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->zzaYF:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->zzasu:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->mExtras:Landroid/os/Bundle;

    iput-object p9, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->zzGu:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->zzaYy:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->zzalD:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->zzTW:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/games/appcontent/AppContentSection;)V
    .locals 6

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/GamesAbstractSafeParcelable;-><init>()V

    const/4 v0, 0x5

    iput v0, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->mVersionCode:I

    invoke-interface {p1}, Lcom/google/android/gms/games/appcontent/AppContentSection;->zzDQ()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->zzaYF:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/appcontent/AppContentSection;->zzDv()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->zzasu:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/appcontent/AppContentSection;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->mExtras:Landroid/os/Bundle;

    invoke-interface {p1}, Lcom/google/android/gms/games/appcontent/AppContentSection;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->zzGu:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/appcontent/AppContentSection;->zzDH()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->zzaYy:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/appcontent/AppContentSection;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->zzalD:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/appcontent/AppContentSection;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->zzTW:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/appcontent/AppContentSection;->getActions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->mActions:Ljava/util/ArrayList;

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_0

    iget-object v5, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->mActions:Ljava/util/ArrayList;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/appcontent/AppContentAction;

    invoke-interface {v0}, Lcom/google/android/gms/games/appcontent/AppContentAction;->freeze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/appcontent/AppContentActionEntity;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/google/android/gms/games/appcontent/AppContentSection;->zzDP()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->zzaYE:Ljava/util/ArrayList;

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_1

    iget-object v5, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->zzaYE:Ljava/util/ArrayList;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/appcontent/AppContentCard;

    invoke-interface {v0}, Lcom/google/android/gms/games/appcontent/AppContentCard;->freeze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/appcontent/AppContentCardEntity;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Lcom/google/android/gms/games/appcontent/AppContentSection;->zzDF()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->zzaYw:Ljava/util/ArrayList;

    :goto_2
    if-ge v1, v3, :cond_2

    iget-object v4, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->zzaYw:Ljava/util/ArrayList;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/appcontent/AppContentAnnotation;

    invoke-interface {v0}, Lcom/google/android/gms/games/appcontent/AppContentAnnotation;->freeze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/appcontent/AppContentAnnotationEntity;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_2
    return-void
.end method

.method static zza(Lcom/google/android/gms/games/appcontent/AppContentSection;)I
    .locals 3

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/AppContentSection;->getActions()Ljava/util/List;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/AppContentSection;->zzDF()Ljava/util/List;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/AppContentSection;->zzDP()Ljava/util/List;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/AppContentSection;->zzDQ()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/AppContentSection;->zzDv()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/AppContentSection;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/AppContentSection;->getId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/AppContentSection;->zzDH()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/AppContentSection;->getTitle()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/AppContentSection;->getType()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method static zza(Lcom/google/android/gms/games/appcontent/AppContentSection;Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    instance-of v2, p1, Lcom/google/android/gms/games/appcontent/AppContentSection;

    if-nez v2, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eq p0, p1, :cond_0

    check-cast p1, Lcom/google/android/gms/games/appcontent/AppContentSection;

    invoke-interface {p1}, Lcom/google/android/gms/games/appcontent/AppContentSection;->getActions()Ljava/util/List;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/AppContentSection;->getActions()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/appcontent/AppContentSection;->zzDF()Ljava/util/List;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/AppContentSection;->zzDF()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/appcontent/AppContentSection;->zzDP()Ljava/util/List;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/AppContentSection;->zzDP()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/appcontent/AppContentSection;->zzDQ()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/AppContentSection;->zzDQ()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/appcontent/AppContentSection;->zzDv()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/AppContentSection;->zzDv()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/appcontent/AppContentSection;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/AppContentSection;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/appcontent/AppContentSection;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/AppContentSection;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/appcontent/AppContentSection;->zzDH()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/AppContentSection;->zzDH()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/appcontent/AppContentSection;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/AppContentSection;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/appcontent/AppContentSection;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/AppContentSection;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto/16 :goto_0
.end method

.method static zzb(Lcom/google/android/gms/games/appcontent/AppContentSection;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzaa;->zzv(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "Actions"

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/AppContentSection;->getActions()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "Annotations"

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/AppContentSection;->zzDF()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "Cards"

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/AppContentSection;->zzDP()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "CardType"

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/AppContentSection;->zzDQ()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "ContentDescription"

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/AppContentSection;->zzDv()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "Extras"

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/AppContentSection;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "Id"

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/AppContentSection;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "Subtitle"

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/AppContentSection;->zzDH()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "Title"

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/AppContentSection;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "Type"

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/AppContentSection;->getType()Ljava/lang/String;

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

    invoke-static {p0, p1}, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->zza(Lcom/google/android/gms/games/appcontent/AppContentSection;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public synthetic freeze()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->zzDR()Lcom/google/android/gms/games/appcontent/AppContentSection;

    move-result-object v0

    return-object v0
.end method

.method public getActions()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/games/appcontent/AppContentAction;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->mActions:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->zzGu:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->zzalD:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->zzTW:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->mVersionCode:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->zza(Lcom/google/android/gms/games/appcontent/AppContentSection;)I

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

    invoke-static {p0}, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->zzb(Lcom/google/android/gms/games/appcontent/AppContentSection;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/games/appcontent/AppContentSectionEntityCreator;->zza(Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzDF()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/games/appcontent/AppContentAnnotation;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->zzaYw:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public zzDH()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->zzaYy:Ljava/lang/String;

    return-object v0
.end method

.method public zzDP()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/games/appcontent/AppContentCard;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->zzaYE:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public zzDQ()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->zzaYF:Ljava/lang/String;

    return-object v0
.end method

.method public zzDR()Lcom/google/android/gms/games/appcontent/AppContentSection;
    .locals 0

    return-object p0
.end method

.method public zzDv()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/appcontent/AppContentSectionEntity;->zzasu:Ljava/lang/String;

    return-object v0
.end method
