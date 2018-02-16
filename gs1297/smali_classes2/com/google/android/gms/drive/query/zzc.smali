.class public Lcom/google/android/gms/drive/query/zzc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/drive/query/internal/zzj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/drive/query/internal/zzj",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzAR()Ljava/lang/String;
    .locals 1

    const-string v0, "all()"

    return-object v0
.end method

.method public zzAS()Ljava/lang/String;
    .locals 1

    const-string v0, "ownedByMe()"

    return-object v0
.end method

.method public synthetic zzAT()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/drive/query/zzc;->zzAS()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic zzAU()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/drive/query/zzc;->zzAR()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/drive/metadata/zzb;Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/drive/metadata/zzb",
            "<TT;>;TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "contains(%s,%s)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/google/android/gms/drive/metadata/zzb;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/drive/query/internal/zzx;Lcom/google/android/gms/drive/metadata/MetadataField;Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/drive/query/internal/zzx;",
            "Lcom/google/android/gms/drive/metadata/MetadataField",
            "<TT;>;TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "cmp(%s,%s,%s)"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/google/android/gms/drive/query/internal/zzx;->getTag()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-interface {p2}, Lcom/google/android/gms/drive/metadata/MetadataField;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/drive/query/internal/zzx;Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/drive/query/internal/zzx;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/gms/drive/query/internal/zzx;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ""

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    move-object v1, v0

    goto :goto_0

    :cond_0
    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic zzb(Lcom/google/android/gms/drive/metadata/zzb;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/drive/query/zzc;->zza(Lcom/google/android/gms/drive/metadata/zzb;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic zzb(Lcom/google/android/gms/drive/query/internal/zzx;Lcom/google/android/gms/drive/metadata/MetadataField;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/drive/query/zzc;->zza(Lcom/google/android/gms/drive/query/internal/zzx;Lcom/google/android/gms/drive/metadata/MetadataField;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic zzb(Lcom/google/android/gms/drive/query/internal/zzx;Ljava/util/List;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/drive/query/zzc;->zza(Lcom/google/android/gms/drive/query/internal/zzx;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zzd(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/drive/metadata/MetadataField",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "fieldOnly(%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {p1}, Lcom/google/android/gms/drive/metadata/MetadataField;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zzd(Lcom/google/android/gms/drive/metadata/MetadataField;Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/drive/metadata/MetadataField",
            "<TT;>;TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "has(%s,%s)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {p1}, Lcom/google/android/gms/drive/metadata/MetadataField;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zzdS(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "not(%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zzdT(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "fullTextSearch(%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic zzdU(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/query/zzc;->zzdT(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic zze(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/query/zzc;->zzd(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic zze(Lcom/google/android/gms/drive/metadata/MetadataField;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/drive/query/zzc;->zzd(Lcom/google/android/gms/drive/metadata/MetadataField;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic zzz(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/query/zzc;->zzdS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
