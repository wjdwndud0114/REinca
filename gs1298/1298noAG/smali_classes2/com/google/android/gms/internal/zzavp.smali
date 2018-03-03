.class public Lcom/google/android/gms/internal/zzavp;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzavp;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzbyc:[Lcom/google/android/gms/internal/zzavt;

.field private static final zzbyd:[Ljava/lang/String;

.field private static final zzbye:Ljava/lang/String;

.field public static final zzbyf:Lcom/google/android/gms/internal/zzavp;


# instance fields
.field final mVersionCode:I

.field final zzD:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field final zzbyg:Lcom/google/android/gms/internal/zzavt;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final zzbyh:Ljava/lang/String;

.field final zzbyi:[Lcom/google/android/gms/internal/zzavt;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field final zzbyj:[Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final zzbyk:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x0

    const/4 v1, 0x0

    new-instance v0, Lcom/google/android/gms/internal/zzavq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzavq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzavp;->CREATOR:Landroid/os/Parcelable$Creator;

    new-array v0, v1, [Lcom/google/android/gms/internal/zzavt;

    sput-object v0, Lcom/google/android/gms/internal/zzavp;->zzbyc:[Lcom/google/android/gms/internal/zzavt;

    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lcom/google/android/gms/internal/zzavp;->zzbyd:[Ljava/lang/String;

    sput-object v4, Lcom/google/android/gms/internal/zzavp;->zzbye:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/internal/zzavp;

    const-string v1, ""

    sget-object v2, Lcom/google/android/gms/internal/zzavp;->zzbyc:[Lcom/google/android/gms/internal/zzavt;

    sget-object v3, Lcom/google/android/gms/internal/zzavp;->zzbyd:[Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzavp;-><init>(Ljava/lang/String;[Lcom/google/android/gms/internal/zzavt;[Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/zzavp;->zzbyf:Lcom/google/android/gms/internal/zzavp;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/internal/zzavt;Ljava/lang/String;Ljava/lang/String;[Lcom/google/android/gms/internal/zzavt;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p2    # Lcom/google/android/gms/internal/zzavt;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # [Lcom/google/android/gms/internal/zzavt;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzavp;->mVersionCode:I

    if-nez p4, :cond_0

    const-string p4, ""

    :cond_0
    iput-object p4, p0, Lcom/google/android/gms/internal/zzavp;->zzbyh:Ljava/lang/String;

    if-nez p5, :cond_1

    sget-object p5, Lcom/google/android/gms/internal/zzavp;->zzbyc:[Lcom/google/android/gms/internal/zzavt;

    :cond_1
    iput-object p5, p0, Lcom/google/android/gms/internal/zzavp;->zzbyi:[Lcom/google/android/gms/internal/zzavt;

    if-nez p6, :cond_2

    sget-object p6, Lcom/google/android/gms/internal/zzavp;->zzbyd:[Ljava/lang/String;

    :cond_2
    iput-object p6, p0, Lcom/google/android/gms/internal/zzavp;->zzbyj:[Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavp;->zzbyi:[Lcom/google/android/gms/internal/zzavt;

    array-length v0, v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/google/android/gms/internal/zzavt;->zzbyo:Lcom/google/android/gms/internal/zzavt;

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/zzavp;->zzbyg:Lcom/google/android/gms/internal/zzavt;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavp;->zzbyj:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    :goto_1
    iput-object v0, p0, Lcom/google/android/gms/internal/zzavp;->zzD:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/internal/zzavp;->zzbyk:Ljava/lang/String;

    return-void

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzavp;->zzbyi:[Lcom/google/android/gms/internal/zzavt;

    aget-object v0, v0, v1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzavp;->zzbyj:[Ljava/lang/String;

    aget-object v0, v0, v1

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;[Lcom/google/android/gms/internal/zzavt;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v2, 0x0

    const/4 v1, 0x1

    move-object v0, p0

    move-object v3, v2

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/zzavp;-><init>(ILcom/google/android/gms/internal/zzavt;Ljava/lang/String;Ljava/lang/String;[Lcom/google/android/gms/internal/zzavt;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
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
    instance-of v2, p1, Lcom/google/android/gms/internal/zzavp;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/internal/zzavp;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzavp;->zzbyh:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzavp;->zzbyh:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzavp;->zzbyk:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzavp;->zzbyk:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzavp;->zzbyh:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzavp;->zzbyk:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavp;->zzbyh:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzavp;->zzbyk:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x28

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "NearbyDevice{handle="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", bluetoothAddress="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzavq;->zza(Lcom/google/android/gms/internal/zzavp;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzNg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavp;->zzbyh:Ljava/lang/String;

    return-object v0
.end method

.method public zzNh()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavp;->zzbyk:Ljava/lang/String;

    return-object v0
.end method
