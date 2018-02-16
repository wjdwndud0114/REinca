.class public Lcom/google/android/gms/nearby/messages/internal/zzg;
.super Lcom/google/android/gms/nearby/messages/internal/zzc;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/nearby/messages/internal/zzg;->zzgq(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/nearby/messages/internal/zzg;-><init>([B)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lcom/google/android/gms/nearby/messages/internal/zzg;->zzgq(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p2}, Lcom/google/android/gms/nearby/messages/internal/zzg;->zzgq(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/nearby/messages/internal/zzg;-><init>([B[B)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/nearby/messages/internal/zzg;->zzB([B)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/nearby/messages/internal/zzc;-><init>([B)V

    return-void
.end method

.method public constructor <init>([B[B)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [[B

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/google/android/gms/nearby/messages/internal/zzg;->zzD([B)[B

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p2}, Lcom/google/android/gms/nearby/messages/internal/zzg;->zzE([B)[B

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/util/zzb;->zza([[B)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/nearby/messages/internal/zzg;-><init>([B)V

    return-void
.end method

.method private static zzB([B)[B
    .locals 2

    array-length v0, p0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    array-length v0, p0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const-string v1, "Bytes must be a namespace (10 bytes), or a namespace plus instance (16 bytes)."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/Object;)V

    return-object p0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static zzD([B)[B
    .locals 5

    const/16 v4, 0xa

    array-length v0, p0

    if-ne v0, v4, :cond_0

    const/4 v0, 0x1

    :goto_0
    array-length v1, p0

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x3e

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Namespace length("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes) must be "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/Object;)V

    return-object p0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static zzE([B)[B
    .locals 5

    const/4 v4, 0x6

    array-length v0, p0

    if-ne v0, v4, :cond_0

    const/4 v0, 0x1

    :goto_0
    array-length v1, p0

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x3d

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Instance length("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes) must be "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/Object;)V

    return-object p0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getInstance()Ljava/lang/String;
    .locals 3

    const/16 v2, 0x10

    invoke-virtual {p0}, Lcom/google/android/gms/nearby/messages/internal/zzg;->getBytes()[B

    move-result-object v0

    array-length v1, v0

    if-ge v1, v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/16 v1, 0xa

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/nearby/messages/internal/zzc;->zzC([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/nearby/messages/internal/zzg;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0xa

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/nearby/messages/internal/zzc;->zzC([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/nearby/messages/internal/zzg;->getHex()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1a

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "EddystoneUidPrefix{bytes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
