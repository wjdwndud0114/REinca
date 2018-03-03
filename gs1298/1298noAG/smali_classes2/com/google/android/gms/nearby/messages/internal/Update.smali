.class public Lcom/google/android/gms/nearby/messages/internal/Update;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/nearby/messages/internal/Update;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mVersionCode:I

.field public final zzbyC:Lcom/google/android/gms/nearby/messages/Message;

.field final zzbzi:I

.field public final zzbzj:Lcom/google/android/gms/nearby/messages/internal/zze;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final zzbzk:Lcom/google/android/gms/nearby/messages/internal/zza;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final zzbzl:Lcom/google/android/gms/internal/zzavp;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/nearby/messages/internal/zzak;

    invoke-direct {v0}, Lcom/google/android/gms/nearby/messages/internal/zzak;-><init>()V

    sput-object v0, Lcom/google/android/gms/nearby/messages/internal/Update;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IILcom/google/android/gms/nearby/messages/Message;Lcom/google/android/gms/nearby/messages/internal/zze;Lcom/google/android/gms/nearby/messages/internal/zza;Lcom/google/android/gms/internal/zzavp;)V
    .locals 2
    .param p4    # Lcom/google/android/gms/nearby/messages/internal/zze;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/google/android/gms/nearby/messages/internal/zza;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/google/android/gms/internal/zzavp;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/nearby/messages/internal/Update;->mVersionCode:I

    iput p2, p0, Lcom/google/android/gms/nearby/messages/internal/Update;->zzbzi:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/nearby/messages/internal/Update;->zzmj(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/google/android/gms/nearby/messages/internal/Update;->zzmj(I)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    const-string v1, "Update cannot represent both FOUND and LOST."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    iput-object p3, p0, Lcom/google/android/gms/nearby/messages/internal/Update;->zzbyC:Lcom/google/android/gms/nearby/messages/Message;

    iput-object p4, p0, Lcom/google/android/gms/nearby/messages/internal/Update;->zzbzj:Lcom/google/android/gms/nearby/messages/internal/zze;

    iput-object p5, p0, Lcom/google/android/gms/nearby/messages/internal/Update;->zzbzk:Lcom/google/android/gms/nearby/messages/internal/zza;

    iput-object p6, p0, Lcom/google/android/gms/nearby/messages/internal/Update;->zzbzl:Lcom/google/android/gms/internal/zzavp;

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private zzNq()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/common/util/zza;

    invoke-direct {v0}, Lcom/google/android/gms/common/util/zza;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/nearby/messages/internal/Update;->zzmj(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "FOUND"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/google/android/gms/nearby/messages/internal/Update;->zzmj(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "LOST"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/google/android/gms/nearby/messages/internal/Update;->zzmj(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "DISTANCE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/google/android/gms/nearby/messages/internal/Update;->zzmj(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "BLE_SIGNAL"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3
    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Lcom/google/android/gms/nearby/messages/internal/Update;->zzmj(I)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "DEVICE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_4
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/nearby/messages/internal/Update;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/nearby/messages/internal/Update;

    iget v2, p0, Lcom/google/android/gms/nearby/messages/internal/Update;->zzbzi:I

    iget v3, p1, Lcom/google/android/gms/nearby/messages/internal/Update;->zzbzi:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/nearby/messages/internal/Update;->zzbyC:Lcom/google/android/gms/nearby/messages/Message;

    iget-object v3, p1, Lcom/google/android/gms/nearby/messages/internal/Update;->zzbyC:Lcom/google/android/gms/nearby/messages/Message;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/nearby/messages/internal/Update;->zzbzj:Lcom/google/android/gms/nearby/messages/internal/zze;

    iget-object v3, p1, Lcom/google/android/gms/nearby/messages/internal/Update;->zzbzj:Lcom/google/android/gms/nearby/messages/internal/zze;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/nearby/messages/internal/Update;->zzbzk:Lcom/google/android/gms/nearby/messages/internal/zza;

    iget-object v3, p1, Lcom/google/android/gms/nearby/messages/internal/Update;->zzbzk:Lcom/google/android/gms/nearby/messages/internal/zza;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/nearby/messages/internal/Update;->zzbzl:Lcom/google/android/gms/internal/zzavp;

    iget-object v3, p1, Lcom/google/android/gms/nearby/messages/internal/Update;->zzbzl:Lcom/google/android/gms/internal/zzavp;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/nearby/messages/internal/Update;->zzbzi:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/nearby/messages/internal/Update;->zzbyC:Lcom/google/android/gms/nearby/messages/Message;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/nearby/messages/internal/Update;->zzbzj:Lcom/google/android/gms/nearby/messages/internal/zze;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/nearby/messages/internal/Update;->zzbzk:Lcom/google/android/gms/nearby/messages/internal/zza;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/nearby/messages/internal/Update;->zzbzl:Lcom/google/android/gms/internal/zzavp;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    invoke-direct {p0}, Lcom/google/android/gms/nearby/messages/internal/Update;->zzNq()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/nearby/messages/internal/Update;->zzbyC:Lcom/google/android/gms/nearby/messages/Message;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/nearby/messages/internal/Update;->zzbzj:Lcom/google/android/gms/nearby/messages/internal/zze;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/nearby/messages/internal/Update;->zzbzk:Lcom/google/android/gms/nearby/messages/internal/zza;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/nearby/messages/internal/Update;->zzbzl:Lcom/google/android/gms/internal/zzavp;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x38

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Update{types="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", message="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", distance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bleSignal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", device="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/nearby/messages/internal/zzak;->zza(Lcom/google/android/gms/nearby/messages/internal/Update;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzmj(I)Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/nearby/messages/internal/Update;->zzbzi:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
