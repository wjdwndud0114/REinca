.class public final Lcom/google/android/gms/drive/events/CompletionEvent;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;

# interfaces
.implements Lcom/google/android/gms/drive/events/ResourceEvent;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/drive/events/CompletionEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATUS_CANCELED:I = 0x3

.field public static final STATUS_CONFLICT:I = 0x2

.field public static final STATUS_FAILURE:I = 0x1

.field public static final STATUS_SUCCESS:I


# instance fields
.field final mVersionCode:I

.field final zzJh:I

.field final zzaJj:Lcom/google/android/gms/drive/DriveId;

.field final zzaKm:Landroid/os/ParcelFileDescriptor;

.field final zzaKn:Landroid/os/ParcelFileDescriptor;

.field final zzaKo:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

.field final zzaKp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final zzaKq:Landroid/os/IBinder;

.field private zzaKr:Z

.field private zzaKs:Z

.field private zzaKt:Z

.field final zzaht:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/events/zzg;

    invoke-direct {v0}, Lcom/google/android/gms/drive/events/zzg;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/events/CompletionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/drive/DriveId;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;Ljava/util/List;ILandroid/os/IBinder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/gms/drive/DriveId;",
            "Ljava/lang/String;",
            "Landroid/os/ParcelFileDescriptor;",
            "Landroid/os/ParcelFileDescriptor;",
            "Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Landroid/os/IBinder;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzaKr:Z

    iput-boolean v0, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzaKs:Z

    iput-boolean v0, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzaKt:Z

    iput p1, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzaJj:Lcom/google/android/gms/drive/DriveId;

    iput-object p3, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzaht:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzaKm:Landroid/os/ParcelFileDescriptor;

    iput-object p5, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzaKn:Landroid/os/ParcelFileDescriptor;

    iput-object p6, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzaKo:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    iput-object p7, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzaKp:Ljava/util/List;

    iput p8, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzJh:I

    iput-object p9, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzaKq:Landroid/os/IBinder;

    return-void
.end method

.method private zzy(Z)V
    .locals 6

    invoke-direct {p0}, Lcom/google/android/gms/drive/events/CompletionEvent;->zzzY()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzaKt:Z

    iget-object v0, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzaKm:Landroid/os/ParcelFileDescriptor;

    invoke-static {v0}, Lcom/google/android/gms/common/util/zzo;->zza(Landroid/os/ParcelFileDescriptor;)V

    iget-object v0, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzaKn:Landroid/os/ParcelFileDescriptor;

    invoke-static {v0}, Lcom/google/android/gms/common/util/zzo;->zza(Landroid/os/ParcelFileDescriptor;)V

    iget-object v0, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzaKo:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzaKo:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    sget-object v1, Lcom/google/android/gms/internal/zzalh;->zzaOf:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->zzc(Lcom/google/android/gms/drive/metadata/MetadataField;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzaKo:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    sget-object v1, Lcom/google/android/gms/internal/zzalh;->zzaOf:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->zza(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/data/BitmapTeleporter;

    invoke-virtual {v0}, Lcom/google/android/gms/common/data/BitmapTeleporter;->release()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzaKq:Landroid/os/IBinder;

    if-nez v0, :cond_3

    const-string v1, "CompletionEvent"

    const-string v2, "No callback on "

    if-eqz p1, :cond_1

    const-string v0, "snooze"

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzahp;->zzF(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void

    :cond_1
    const-string v0, "dismiss"

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzaKq:Landroid/os/IBinder;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzain$zza;->zzbO(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzain;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzain;->zzy(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v1, v0

    const-string v2, "CompletionEvent"

    if-eqz p1, :cond_4

    const-string v0, "snooze"

    :goto_3
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x15

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "RemoteException on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/zzahp;->zzF(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const-string v0, "dismiss"

    goto :goto_3
.end method

.method private zzzY()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzaKt:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Event has already been dismissed or snoozed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/drive/events/CompletionEvent;->zzy(Z)V

    return-void
.end method

.method public getAccountName()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/drive/events/CompletionEvent;->zzzY()V

    iget-object v0, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzaht:Ljava/lang/String;

    return-object v0
.end method

.method public getBaseContentsInputStream()Ljava/io/InputStream;
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/drive/events/CompletionEvent;->zzzY()V

    iget-object v0, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzaKm:Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzaKr:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getBaseInputStream() can only be called once per CompletionEvent instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzaKr:Z

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzaKm:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    goto :goto_0
.end method

.method public getDriveId()Lcom/google/android/gms/drive/DriveId;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/drive/events/CompletionEvent;->zzzY()V

    iget-object v0, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzaJj:Lcom/google/android/gms/drive/DriveId;

    return-object v0
.end method

.method public getModifiedContentsInputStream()Ljava/io/InputStream;
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/drive/events/CompletionEvent;->zzzY()V

    iget-object v0, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzaKn:Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzaKs:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getModifiedInputStream() can only be called once per CompletionEvent instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzaKs:Z

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzaKn:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    goto :goto_0
.end method

.method public getModifiedMetadataChangeSet()Lcom/google/android/gms/drive/MetadataChangeSet;
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/drive/events/CompletionEvent;->zzzY()V

    iget-object v0, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzaKo:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/drive/MetadataChangeSet;

    iget-object v1, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzaKo:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/MetadataChangeSet;-><init>(Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getStatus()I
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/drive/events/CompletionEvent;->zzzY()V

    iget v0, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzJh:I

    return v0
.end method

.method public getTrackingTags()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/drive/events/CompletionEvent;->zzzY()V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzaKp:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public snooze()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/drive/events/CompletionEvent;->zzy(Z)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzaKp:Ljava/util/List;

    if-nez v0, :cond_0

    const-string v0, "<null>"

    :goto_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "CompletionEvent [id=%s, status=%s, trackingTag=%s]"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzaJj:Lcom/google/android/gms/drive/DriveId;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzJh:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "\',\'"

    iget-object v1, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzaKp:Ljava/util/List;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    or-int/lit8 v0, p2, 0x1

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/drive/events/zzg;->zza(Lcom/google/android/gms/drive/events/CompletionEvent;Landroid/os/Parcel;I)V

    return-void
.end method
