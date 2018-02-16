.class public Lcom/google/android/gms/drive/DriveId;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/drive/DriveId;",
            ">;"
        }
    .end annotation
.end field

.field public static final RESOURCE_TYPE_FILE:I = 0x0

.field public static final RESOURCE_TYPE_FOLDER:I = 0x1

.field public static final RESOURCE_TYPE_UNKNOWN:I = -0x1


# instance fields
.field final mVersionCode:I

.field final zzaJe:J

.field private volatile zzaJg:Ljava/lang/String;

.field final zzaJv:Ljava/lang/String;

.field final zzaJw:J

.field final zzaJx:I

.field private volatile zzaJy:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/zzh;

    invoke-direct {v0}, Lcom/google/android/gms/drive/zzh;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/DriveId;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;JJI)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/drive/DriveId;->zzaJg:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/drive/DriveId;->zzaJy:Ljava/lang/String;

    iput p1, p0, Lcom/google/android/gms/drive/DriveId;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/drive/DriveId;->zzaJv:Ljava/lang/String;

    const-string v0, ""

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzas(Z)V

    if-nez p2, :cond_0

    const-wide/16 v4, -0x1

    cmp-long v0, p3, v4

    if-eqz v0, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzac;->zzas(Z)V

    iput-wide p3, p0, Lcom/google/android/gms/drive/DriveId;->zzaJw:J

    iput-wide p5, p0, Lcom/google/android/gms/drive/DriveId;->zzaJe:J

    iput p7, p0, Lcom/google/android/gms/drive/DriveId;->zzaJx:I

    return-void

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;JJI)V
    .locals 10

    const/4 v2, 0x1

    move-object v1, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/drive/DriveId;-><init>(ILjava/lang/String;JJI)V

    return-void
.end method

.method public static decodeFromString(Ljava/lang/String;)Lcom/google/android/gms/drive/DriveId;
    .locals 4

    const-string v0, "DriveId:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "Invalid DriveId: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/Object;)V

    const-string v0, "DriveId:"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/drive/DriveId;->zzt([B)Lcom/google/android/gms/drive/DriveId;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static zzdH(Ljava/lang/String;)Lcom/google/android/gms/drive/DriveId;
    .locals 7

    const-wide/16 v2, -0x1

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/drive/DriveId;

    const/4 v6, -0x1

    move-object v1, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/drive/DriveId;-><init>(Ljava/lang/String;JJI)V

    return-object v0
.end method

.method static zzt([B)Lcom/google/android/gms/drive/DriveId;
    .locals 9

    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/zzalf;->zzu([B)Lcom/google/android/gms/internal/zzalf;
    :try_end_0
    .catch Lcom/google/android/gms/internal/zzbus; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    const-string v1, ""

    iget-object v2, v0, Lcom/google/android/gms/internal/zzalf;->zzaNi:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v3, 0x0

    :goto_0
    new-instance v1, Lcom/google/android/gms/drive/DriveId;

    iget v2, v0, Lcom/google/android/gms/internal/zzalf;->versionCode:I

    iget-wide v4, v0, Lcom/google/android/gms/internal/zzalf;->zzaNj:J

    iget-wide v6, v0, Lcom/google/android/gms/internal/zzalf;->zzaNg:J

    iget v8, v0, Lcom/google/android/gms/internal/zzalf;->zzaNk:I

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/drive/DriveId;-><init>(ILjava/lang/String;JJI)V

    return-object v1

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    iget-object v3, v0, Lcom/google/android/gms/internal/zzalf;->zzaNi:Ljava/lang/String;

    goto :goto_0
.end method

.method private zzzE()[B
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/zzalg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzalg;-><init>()V

    iget-wide v2, p0, Lcom/google/android/gms/drive/DriveId;->zzaJw:J

    iput-wide v2, v0, Lcom/google/android/gms/internal/zzalg;->zzaNj:J

    iget-wide v2, p0, Lcom/google/android/gms/drive/DriveId;->zzaJe:J

    iput-wide v2, v0, Lcom/google/android/gms/internal/zzalg;->zzaNg:J

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbut;->zzf(Lcom/google/android/gms/internal/zzbut;)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public asDriveFile()Lcom/google/android/gms/drive/DriveFile;
    .locals 2

    iget v0, p0, Lcom/google/android/gms/drive/DriveId;->zzaJx:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This DriveId corresponds to a folder. Call asDriveFolder instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzahm;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzahm;-><init>(Lcom/google/android/gms/drive/DriveId;)V

    return-object v0
.end method

.method public asDriveFolder()Lcom/google/android/gms/drive/DriveFolder;
    .locals 2

    iget v0, p0, Lcom/google/android/gms/drive/DriveId;->zzaJx:I

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This DriveId corresponds to a file. Call asDriveFile instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzaho;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzaho;-><init>(Lcom/google/android/gms/drive/DriveId;)V

    return-object v0
.end method

.method public asDriveResource()Lcom/google/android/gms/drive/DriveResource;
    .locals 2

    iget v0, p0, Lcom/google/android/gms/drive/DriveId;->zzaJx:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/drive/DriveId;->asDriveFolder()Lcom/google/android/gms/drive/DriveFolder;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/google/android/gms/drive/DriveId;->zzaJx:I

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/drive/DriveId;->asDriveFile()Lcom/google/android/gms/drive/DriveFile;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/zzahr;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzahr;-><init>(Lcom/google/android/gms/drive/DriveId;)V

    goto :goto_0
.end method

.method public final encodeToString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/drive/DriveId;->zzaJg:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/drive/DriveId;->zzzy()[B

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DriveId:"

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
    iput-object v0, p0, Lcom/google/android/gms/drive/DriveId;->zzaJg:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/drive/DriveId;->zzaJg:Ljava/lang/String;

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    const-wide/16 v6, -0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    instance-of v2, p1, Lcom/google/android/gms/drive/DriveId;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    check-cast p1, Lcom/google/android/gms/drive/DriveId;

    iget-wide v2, p1, Lcom/google/android/gms/drive/DriveId;->zzaJe:J

    iget-wide v4, p0, Lcom/google/android/gms/drive/DriveId;->zzaJe:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-wide v2, p1, Lcom/google/android/gms/drive/DriveId;->zzaJw:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/google/android/gms/drive/DriveId;->zzaJw:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_2

    iget-object v0, p1, Lcom/google/android/gms/drive/DriveId;->zzaJv:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/drive/DriveId;->zzaJv:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/drive/DriveId;->zzaJv:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p1, Lcom/google/android/gms/drive/DriveId;->zzaJv:Ljava/lang/String;

    if-nez v2, :cond_5

    :cond_3
    iget-wide v2, p1, Lcom/google/android/gms/drive/DriveId;->zzaJw:J

    iget-wide v4, p0, Lcom/google/android/gms/drive/DriveId;->zzaJw:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1

    :cond_5
    iget-wide v2, p1, Lcom/google/android/gms/drive/DriveId;->zzaJw:J

    iget-wide v4, p0, Lcom/google/android/gms/drive/DriveId;->zzaJw:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-object v2, p1, Lcom/google/android/gms/drive/DriveId;->zzaJv:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/drive/DriveId;->zzaJv:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    move v1, v0

    goto :goto_0

    :cond_6
    const-string v0, "DriveId"

    const-string v2, "Unexpected unequal resourceId for same DriveId object."

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzahp;->zzE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getResourceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/drive/DriveId;->zzaJv:Ljava/lang/String;

    return-object v0
.end method

.method public getResourceType()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/drive/DriveId;->zzaJx:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Lcom/google/android/gms/drive/DriveId;->zzaJw:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/drive/DriveId;->zzaJv:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/drive/DriveId;->zzaJe:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/gms/drive/DriveId;->zzaJw:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final toInvariantString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/drive/DriveId;->zzaJy:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/drive/DriveId;->zzzE()[B

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/drive/DriveId;->zzaJy:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/drive/DriveId;->zzaJy:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/drive/DriveId;->encodeToString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/zzh;->zza(Lcom/google/android/gms/drive/DriveId;Landroid/os/Parcel;I)V

    return-void
.end method

.method final zzzy()[B
    .locals 4

    new-instance v1, Lcom/google/android/gms/internal/zzalf;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzalf;-><init>()V

    iget v0, p0, Lcom/google/android/gms/drive/DriveId;->mVersionCode:I

    iput v0, v1, Lcom/google/android/gms/internal/zzalf;->versionCode:I

    iget-object v0, p0, Lcom/google/android/gms/drive/DriveId;->zzaJv:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    iput-object v0, v1, Lcom/google/android/gms/internal/zzalf;->zzaNi:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/gms/drive/DriveId;->zzaJw:J

    iput-wide v2, v1, Lcom/google/android/gms/internal/zzalf;->zzaNj:J

    iget-wide v2, p0, Lcom/google/android/gms/drive/DriveId;->zzaJe:J

    iput-wide v2, v1, Lcom/google/android/gms/internal/zzalf;->zzaNg:J

    iget v0, p0, Lcom/google/android/gms/drive/DriveId;->zzaJx:I

    iput v0, v1, Lcom/google/android/gms/internal/zzalf;->zzaNk:I

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbut;->zzf(Lcom/google/android/gms/internal/zzbut;)[B

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/drive/DriveId;->zzaJv:Ljava/lang/String;

    goto :goto_0
.end method
