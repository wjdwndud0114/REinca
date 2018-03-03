.class public Lcom/google/android/gms/nearby/messages/EddystoneUid;
.super Ljava/lang/Object;


# static fields
.field public static final INSTANCE_LENGTH:I = 0x6

.field public static final LENGTH:I = 0x10

.field public static final NAMESPACE_LENGTH:I = 0xa


# instance fields
.field private final zzbxm:Lcom/google/android/gms/nearby/messages/internal/zzg;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/nearby/messages/internal/zzc;->zzgq(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/nearby/messages/EddystoneUid;-><init>([B)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/nearby/messages/internal/zzg;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/nearby/messages/internal/zzg;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/nearby/messages/EddystoneUid;->zzbxm:Lcom/google/android/gms/nearby/messages/internal/zzg;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/nearby/messages/internal/zzg;

    invoke-static {p1}, Lcom/google/android/gms/nearby/messages/EddystoneUid;->zzB([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/nearby/messages/internal/zzg;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/gms/nearby/messages/EddystoneUid;->zzbxm:Lcom/google/android/gms/nearby/messages/internal/zzg;

    return-void
.end method

.method public static from(Lcom/google/android/gms/nearby/messages/Message;)Lcom/google/android/gms/nearby/messages/EddystoneUid;
    .locals 4

    const-string v0, "__eddystone_uid"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/nearby/messages/Message;->zzgp(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/nearby/messages/Message;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x3a

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Message type \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is not Message.MESSAGE_TYPE_EDDYSTONE_UID."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/nearby/messages/EddystoneUid;

    invoke-virtual {p0}, Lcom/google/android/gms/nearby/messages/Message;->getContent()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/nearby/messages/EddystoneUid;-><init>([B)V

    return-object v0
.end method

.method private static zzB([B)[B
    .locals 2

    array-length v0, p0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Bytes must be a namespace plus instance (16 bytes)."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/Object;)V

    return-object p0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/nearby/messages/EddystoneUid;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gms/nearby/messages/EddystoneUid;

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/EddystoneUid;->zzbxm:Lcom/google/android/gms/nearby/messages/internal/zzg;

    iget-object v1, p1, Lcom/google/android/gms/nearby/messages/EddystoneUid;->zzbxm:Lcom/google/android/gms/nearby/messages/internal/zzg;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getHex()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/EddystoneUid;->zzbxm:Lcom/google/android/gms/nearby/messages/internal/zzg;

    invoke-virtual {v0}, Lcom/google/android/gms/nearby/messages/internal/zzg;->getHex()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInstance()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/EddystoneUid;->zzbxm:Lcom/google/android/gms/nearby/messages/internal/zzg;

    invoke-virtual {v0}, Lcom/google/android/gms/nearby/messages/internal/zzg;->getInstance()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/EddystoneUid;->zzbxm:Lcom/google/android/gms/nearby/messages/internal/zzg;

    invoke-virtual {v0}, Lcom/google/android/gms/nearby/messages/internal/zzg;->getNamespace()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/nearby/messages/EddystoneUid;->zzbxm:Lcom/google/android/gms/nearby/messages/internal/zzg;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/nearby/messages/EddystoneUid;->getHex()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x11

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "EddystoneUid{id="

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
