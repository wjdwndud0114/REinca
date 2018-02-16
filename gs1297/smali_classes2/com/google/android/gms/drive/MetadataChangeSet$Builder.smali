.class public Lcom/google/android/gms/drive/MetadataChangeSet$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/drive/MetadataChangeSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final zzaJO:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

.field private zzaJP:Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties$zza;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->zzAI()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/drive/MetadataChangeSet$Builder;->zzaJO:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    return-void
.end method

.method private zzdL(Ljava/lang/String;)I
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    goto :goto_0
.end method

.method private zzj(Ljava/lang/String;II)Ljava/lang/String;
    .locals 4

    const-string v0, "%s must be no more than %d bytes, but is %d bytes."

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private zzk(Ljava/lang/String;II)V
    .locals 2

    if-gt p3, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/drive/MetadataChangeSet$Builder;->zzj(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private zzzR()Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties$zza;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/drive/MetadataChangeSet$Builder;->zzaJP:Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties$zza;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties$zza;

    invoke-direct {v0}, Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties$zza;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/drive/MetadataChangeSet$Builder;->zzaJP:Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties$zza;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/drive/MetadataChangeSet$Builder;->zzaJP:Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties$zza;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/google/android/gms/drive/MetadataChangeSet;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/drive/MetadataChangeSet$Builder;->zzaJP:Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties$zza;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/drive/MetadataChangeSet$Builder;->zzaJO:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    sget-object v1, Lcom/google/android/gms/internal/zzalh;->zzaNC:Lcom/google/android/gms/internal/zzalh$zza;

    iget-object v2, p0, Lcom/google/android/gms/drive/MetadataChangeSet$Builder;->zzaJP:Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties$zza;

    invoke-virtual {v2}, Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties$zza;->zzAE()Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->zzc(Lcom/google/android/gms/drive/metadata/MetadataField;Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Lcom/google/android/gms/drive/MetadataChangeSet;

    iget-object v1, p0, Lcom/google/android/gms/drive/MetadataChangeSet$Builder;->zzaJO:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/MetadataChangeSet;-><init>(Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;)V

    return-object v0
.end method

.method public deleteCustomProperty(Lcom/google/android/gms/drive/metadata/CustomPropertyKey;)Lcom/google/android/gms/drive/MetadataChangeSet$Builder;
    .locals 2

    const-string v0, "key"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/android/gms/drive/MetadataChangeSet$Builder;->zzzR()Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties$zza;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties$zza;->zza(Lcom/google/android/gms/drive/metadata/CustomPropertyKey;Ljava/lang/String;)Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties$zza;

    return-object p0
.end method

.method public setCustomProperty(Lcom/google/android/gms/drive/metadata/CustomPropertyKey;Ljava/lang/String;)Lcom/google/android/gms/drive/MetadataChangeSet$Builder;
    .locals 3

    const-string v0, "key"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "value"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/drive/metadata/CustomPropertyKey;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/drive/MetadataChangeSet$Builder;->zzdL(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p2}, Lcom/google/android/gms/drive/MetadataChangeSet$Builder;->zzdL(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    const-string v1, "The total size of key string and value string of a custom property"

    const/16 v2, 0x7c

    invoke-direct {p0, v1, v2, v0}, Lcom/google/android/gms/drive/MetadataChangeSet$Builder;->zzk(Ljava/lang/String;II)V

    invoke-direct {p0}, Lcom/google/android/gms/drive/MetadataChangeSet$Builder;->zzzR()Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties$zza;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties$zza;->zza(Lcom/google/android/gms/drive/metadata/CustomPropertyKey;Ljava/lang/String;)Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties$zza;

    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/google/android/gms/drive/MetadataChangeSet$Builder;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/drive/MetadataChangeSet$Builder;->zzaJO:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    sget-object v1, Lcom/google/android/gms/internal/zzalh;->zzaND:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->zzc(Lcom/google/android/gms/drive/metadata/MetadataField;Ljava/lang/Object;)V

    return-object p0
.end method

.method public setIndexableText(Ljava/lang/String;)Lcom/google/android/gms/drive/MetadataChangeSet$Builder;
    .locals 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/drive/MetadataChangeSet$Builder;->zzdL(Ljava/lang/String;)I

    move-result v0

    const-string v1, "Indexable text size"

    const/high16 v2, 0x20000

    invoke-direct {p0, v1, v2, v0}, Lcom/google/android/gms/drive/MetadataChangeSet$Builder;->zzk(Ljava/lang/String;II)V

    iget-object v0, p0, Lcom/google/android/gms/drive/MetadataChangeSet$Builder;->zzaJO:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    sget-object v1, Lcom/google/android/gms/internal/zzalh;->zzaNJ:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->zzc(Lcom/google/android/gms/drive/metadata/MetadataField;Ljava/lang/Object;)V

    return-object p0
.end method

.method public setLastViewedByMeDate(Ljava/util/Date;)Lcom/google/android/gms/drive/MetadataChangeSet$Builder;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/drive/MetadataChangeSet$Builder;->zzaJO:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    sget-object v1, Lcom/google/android/gms/internal/zzalj;->zzaOt:Lcom/google/android/gms/internal/zzalj$zzb;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->zzc(Lcom/google/android/gms/drive/metadata/MetadataField;Ljava/lang/Object;)V

    return-object p0
.end method

.method public setMimeType(Ljava/lang/String;)Lcom/google/android/gms/drive/MetadataChangeSet$Builder;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/drive/MetadataChangeSet$Builder;->zzaJO:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    sget-object v1, Lcom/google/android/gms/internal/zzalh;->zzaNX:Lcom/google/android/gms/internal/zzalh$zzc;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->zzc(Lcom/google/android/gms/drive/metadata/MetadataField;Ljava/lang/Object;)V

    return-object p0
.end method

.method public setPinned(Z)Lcom/google/android/gms/drive/MetadataChangeSet$Builder;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/drive/MetadataChangeSet$Builder;->zzaJO:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    sget-object v1, Lcom/google/android/gms/internal/zzalh;->zzaNP:Lcom/google/android/gms/internal/zzalh$zzb;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->zzc(Lcom/google/android/gms/drive/metadata/MetadataField;Ljava/lang/Object;)V

    return-object p0
.end method

.method public setStarred(Z)Lcom/google/android/gms/drive/MetadataChangeSet$Builder;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/drive/MetadataChangeSet$Builder;->zzaJO:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    sget-object v1, Lcom/google/android/gms/internal/zzalh;->zzaOe:Lcom/google/android/gms/internal/zzalh$zzf;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->zzc(Lcom/google/android/gms/drive/metadata/MetadataField;Ljava/lang/Object;)V

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/android/gms/drive/MetadataChangeSet$Builder;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/drive/MetadataChangeSet$Builder;->zzaJO:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    sget-object v1, Lcom/google/android/gms/internal/zzalh;->zzaOg:Lcom/google/android/gms/internal/zzalh$zzg;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->zzc(Lcom/google/android/gms/drive/metadata/MetadataField;Ljava/lang/Object;)V

    return-object p0
.end method

.method public setViewed(Z)Lcom/google/android/gms/drive/MetadataChangeSet$Builder;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/drive/MetadataChangeSet$Builder;->zzaJO:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    sget-object v1, Lcom/google/android/gms/internal/zzalh;->zzaNW:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->zzc(Lcom/google/android/gms/drive/metadata/MetadataField;Ljava/lang/Object;)V

    return-object p0
.end method
