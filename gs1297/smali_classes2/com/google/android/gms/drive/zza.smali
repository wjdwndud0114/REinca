.class public Lcom/google/android/gms/drive/zza;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/drive/zza;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mVersionCode:I

.field final zzaJd:J

.field final zzaJe:J

.field final zzaJf:J

.field private volatile zzaJg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/zzb;

    invoke-direct {v0}, Lcom/google/android/gms/drive/zzb;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/zza;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IJJJ)V
    .locals 6

    const-wide/16 v4, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/drive/zza;->zzaJg:Ljava/lang/String;

    cmp-long v0, p2, v4

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzas(Z)V

    cmp-long v0, p4, v4

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzas(Z)V

    cmp-long v0, p6, v4

    if-eqz v0, :cond_2

    :goto_2
    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzac;->zzas(Z)V

    iput p1, p0, Lcom/google/android/gms/drive/zza;->mVersionCode:I

    iput-wide p2, p0, Lcom/google/android/gms/drive/zza;->zzaJd:J

    iput-wide p4, p0, Lcom/google/android/gms/drive/zza;->zzaJe:J

    iput-wide p6, p0, Lcom/google/android/gms/drive/zza;->zzaJf:J

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method


# virtual methods
.method public final encodeToString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/drive/zza;->zzaJg:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/drive/zza;->zzzy()[B

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ChangeSequenceNumber:"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/drive/zza;->zzaJg:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/drive/zza;->zzaJg:Ljava/lang/String;

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/google/android/gms/drive/zza;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lcom/google/android/gms/drive/zza;

    iget-wide v2, p1, Lcom/google/android/gms/drive/zza;->zzaJe:J

    iget-wide v4, p0, Lcom/google/android/gms/drive/zza;->zzaJe:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-wide v2, p1, Lcom/google/android/gms/drive/zza;->zzaJf:J

    iget-wide v4, p0, Lcom/google/android/gms/drive/zza;->zzaJf:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-wide v2, p1, Lcom/google/android/gms/drive/zza;->zzaJd:J

    iget-wide v4, p0, Lcom/google/android/gms/drive/zza;->zzaJd:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 6

    iget-wide v0, p0, Lcom/google/android/gms/drive/zza;->zzaJd:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/gms/drive/zza;->zzaJe:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/gms/drive/zza;->zzaJf:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/drive/zza;->encodeToString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/zzb;->zza(Lcom/google/android/gms/drive/zza;Landroid/os/Parcel;I)V

    return-void
.end method

.method final zzzy()[B
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/zzale;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzale;-><init>()V

    iget v1, p0, Lcom/google/android/gms/drive/zza;->mVersionCode:I

    iput v1, v0, Lcom/google/android/gms/internal/zzale;->versionCode:I

    iget-wide v2, p0, Lcom/google/android/gms/drive/zza;->zzaJd:J

    iput-wide v2, v0, Lcom/google/android/gms/internal/zzale;->zzaNf:J

    iget-wide v2, p0, Lcom/google/android/gms/drive/zza;->zzaJe:J

    iput-wide v2, v0, Lcom/google/android/gms/internal/zzale;->zzaNg:J

    iget-wide v2, p0, Lcom/google/android/gms/drive/zza;->zzaJf:J

    iput-wide v2, v0, Lcom/google/android/gms/internal/zzale;->zzaNh:J

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbut;->zzf(Lcom/google/android/gms/internal/zzbut;)[B

    move-result-object v0

    return-object v0
.end method
