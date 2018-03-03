.class public final Lcom/google/android/gms/drive/MetadataChangeSet;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/drive/MetadataChangeSet$Builder;
    }
.end annotation


# static fields
.field public static final CUSTOM_PROPERTY_SIZE_LIMIT_BYTES:I = 0x7c

.field public static final INDEXABLE_TEXT_SIZE_LIMIT_BYTES:I = 0x20000

.field public static final MAX_PRIVATE_PROPERTIES_PER_RESOURCE_PER_APP:I = 0x1e

.field public static final MAX_PUBLIC_PROPERTIES_PER_RESOURCE:I = 0x1e

.field public static final MAX_TOTAL_PROPERTIES_PER_RESOURCE:I = 0x64

.field public static final zzaJN:Lcom/google/android/gms/drive/MetadataChangeSet;


# instance fields
.field private final zzaJO:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/drive/MetadataChangeSet;

    invoke-static {}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->zzAI()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/MetadataChangeSet;-><init>(Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;)V

    sput-object v0, Lcom/google/android/gms/drive/MetadataChangeSet;->zzaJN:Lcom/google/android/gms/drive/MetadataChangeSet;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->zzAJ()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/drive/MetadataChangeSet;->zzaJO:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    return-void
.end method


# virtual methods
.method public getCustomPropertyChangeMap()Ljava/util/Map;
    .locals 2
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

    iget-object v0, p0, Lcom/google/android/gms/drive/MetadataChangeSet;->zzaJO:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    sget-object v1, Lcom/google/android/gms/internal/zzalh;->zzaNC:Lcom/google/android/gms/internal/zzalh$zza;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->zza(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

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
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/drive/MetadataChangeSet;->zzaJO:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    sget-object v1, Lcom/google/android/gms/internal/zzalh;->zzaND:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->zza(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getIndexableText()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/drive/MetadataChangeSet;->zzaJO:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    sget-object v1, Lcom/google/android/gms/internal/zzalh;->zzaNJ:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->zza(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getLastViewedByMeDate()Ljava/util/Date;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/drive/MetadataChangeSet;->zzaJO:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    sget-object v1, Lcom/google/android/gms/internal/zzalj;->zzaOt:Lcom/google/android/gms/internal/zzalj$zzb;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->zza(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/drive/MetadataChangeSet;->zzaJO:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    sget-object v1, Lcom/google/android/gms/internal/zzalh;->zzaNX:Lcom/google/android/gms/internal/zzalh$zzc;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->zza(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/drive/MetadataChangeSet;->zzaJO:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    sget-object v1, Lcom/google/android/gms/internal/zzalh;->zzaOg:Lcom/google/android/gms/internal/zzalh$zzg;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->zza(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public isPinned()Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/drive/MetadataChangeSet;->zzaJO:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    sget-object v1, Lcom/google/android/gms/internal/zzalh;->zzaNP:Lcom/google/android/gms/internal/zzalh$zzb;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->zza(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public isStarred()Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/drive/MetadataChangeSet;->zzaJO:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    sget-object v1, Lcom/google/android/gms/internal/zzalh;->zzaOe:Lcom/google/android/gms/internal/zzalh$zzf;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->zza(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public isViewed()Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/drive/MetadataChangeSet;->zzaJO:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    sget-object v1, Lcom/google/android/gms/internal/zzalh;->zzaNW:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->zza(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/drive/metadata/MetadataField;Ljava/lang/Object;)Lcom/google/android/gms/drive/MetadataChangeSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/drive/metadata/MetadataField",
            "<TT;>;TT;)",
            "Lcom/google/android/gms/drive/MetadataChangeSet;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/drive/MetadataChangeSet;->zzzQ()Lcom/google/android/gms/drive/MetadataChangeSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/drive/MetadataChangeSet;->zzzP()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->zzc(Lcom/google/android/gms/drive/metadata/MetadataField;Ljava/lang/Object;)V

    return-object v0
.end method

.method public zzzP()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/drive/MetadataChangeSet;->zzaJO:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    return-object v0
.end method

.method public zzzQ()Lcom/google/android/gms/drive/MetadataChangeSet;
    .locals 2

    new-instance v0, Lcom/google/android/gms/drive/MetadataChangeSet;

    invoke-virtual {p0}, Lcom/google/android/gms/drive/MetadataChangeSet;->zzzP()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/MetadataChangeSet;-><init>(Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;)V

    return-object v0
.end method
