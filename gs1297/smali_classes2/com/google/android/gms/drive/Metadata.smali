.class public abstract Lcom/google/android/gms/drive/Metadata;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/data/Freezable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/data/Freezable",
        "<",
        "Lcom/google/android/gms/drive/Metadata;",
        ">;"
    }
.end annotation


# static fields
.field public static final CONTENT_AVAILABLE_LOCALLY:I = 0x1

.field public static final CONTENT_NOT_AVAILABLE_LOCALLY:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlternateLink()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzalh;->zzaNB:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->zza(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getContentAvailability()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzall;->zzaOz:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->zza(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getCreatedDate()Ljava/util/Date;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzalj;->zzaOs:Lcom/google/android/gms/internal/zzalj$zza;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->zza(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method public getCustomProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/drive/metadata/CustomPropertyKey;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzalh;->zzaNC:Lcom/google/android/gms/internal/zzalh$zza;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->zza(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties;->zzAD()Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzalh;->zzaND:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->zza(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDriveId()Lcom/google/android/gms/drive/DriveId;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzalh;->zzaNA:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->zza(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/DriveId;

    return-object v0
.end method

.method public getEmbedLink()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzalh;->zzaNE:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->zza(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getFileExtension()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzalh;->zzaNF:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->zza(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getFileSize()J
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzalh;->zzaNG:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->zza(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastViewedByMeDate()Ljava/util/Date;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzalj;->zzaOt:Lcom/google/android/gms/internal/zzalj$zzb;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->zza(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzalh;->zzaNX:Lcom/google/android/gms/internal/zzalh$zzc;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->zza(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getModifiedByMeDate()Ljava/util/Date;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzalj;->zzaOv:Lcom/google/android/gms/internal/zzalj$zzc;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->zza(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method public getModifiedDate()Ljava/util/Date;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzalj;->zzaOu:Lcom/google/android/gms/internal/zzalj$zzd;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->zza(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method public getOriginalFilename()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzalh;->zzaNY:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->zza(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getQuotaBytesUsed()J
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzalh;->zzaOd:Lcom/google/android/gms/internal/zzalh$zzd;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->zza(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSharedWithMeDate()Ljava/util/Date;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzalj;->zzaOw:Lcom/google/android/gms/internal/zzalj$zzf;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->zza(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzalh;->zzaOg:Lcom/google/android/gms/internal/zzalh$zzg;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->zza(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getWebContentLink()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzalh;->zzaOi:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->zza(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getWebViewLink()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzalh;->zzaOj:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->zza(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public isEditable()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzalh;->zzaNM:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->zza(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public isExplicitlyTrashed()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzalh;->zzaNN:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->zza(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public isFolder()Z
    .locals 2

    const-string v0, "application/vnd.google-apps.folder"

    invoke-virtual {p0}, Lcom/google/android/gms/drive/Metadata;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isInAppFolder()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzalh;->zzaNK:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->zza(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public isPinnable()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzall;->zzaOA:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->zza(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public isPinned()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzalh;->zzaNP:Lcom/google/android/gms/internal/zzalh$zzb;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->zza(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public isRestricted()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzalh;->zzaNR:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->zza(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public isShared()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzalh;->zzaNS:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->zza(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public isStarred()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzalh;->zzaOe:Lcom/google/android/gms/internal/zzalh$zzf;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->zza(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public isTrashable()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzalh;->zzaNV:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->zza(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public isTrashed()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzalh;->zzaOh:Lcom/google/android/gms/internal/zzalh$zzh;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->zza(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public isViewed()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzalh;->zzaNW:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->zza(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public abstract zza(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/drive/metadata/MetadataField",
            "<TT;>;)TT;"
        }
    .end annotation
.end method
