.class public final enum Lcom/google/android/gms/internal/zzsd;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/gms/internal/zzsd;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum zzadK:Lcom/google/android/gms/internal/zzsd;

.field public static final enum zzadL:Lcom/google/android/gms/internal/zzsd;

.field public static final enum zzadM:Lcom/google/android/gms/internal/zzsd;

.field public static final enum zzadN:Lcom/google/android/gms/internal/zzsd;

.field public static final enum zzadO:Lcom/google/android/gms/internal/zzsd;

.field public static final enum zzadP:Lcom/google/android/gms/internal/zzsd;

.field private static final synthetic zzadQ:[Lcom/google/android/gms/internal/zzsd;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/google/android/gms/internal/zzsd;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/zzsd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzsd;->zzadK:Lcom/google/android/gms/internal/zzsd;

    new-instance v0, Lcom/google/android/gms/internal/zzsd;

    const-string v1, "BATCH_BY_SESSION"

    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/zzsd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzsd;->zzadL:Lcom/google/android/gms/internal/zzsd;

    new-instance v0, Lcom/google/android/gms/internal/zzsd;

    const-string v1, "BATCH_BY_TIME"

    invoke-direct {v0, v1, v5}, Lcom/google/android/gms/internal/zzsd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzsd;->zzadM:Lcom/google/android/gms/internal/zzsd;

    new-instance v0, Lcom/google/android/gms/internal/zzsd;

    const-string v1, "BATCH_BY_BRUTE_FORCE"

    invoke-direct {v0, v1, v6}, Lcom/google/android/gms/internal/zzsd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzsd;->zzadN:Lcom/google/android/gms/internal/zzsd;

    new-instance v0, Lcom/google/android/gms/internal/zzsd;

    const-string v1, "BATCH_BY_COUNT"

    invoke-direct {v0, v1, v7}, Lcom/google/android/gms/internal/zzsd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzsd;->zzadO:Lcom/google/android/gms/internal/zzsd;

    new-instance v0, Lcom/google/android/gms/internal/zzsd;

    const-string v1, "BATCH_BY_SIZE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzsd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzsd;->zzadP:Lcom/google/android/gms/internal/zzsd;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/android/gms/internal/zzsd;

    sget-object v1, Lcom/google/android/gms/internal/zzsd;->zzadK:Lcom/google/android/gms/internal/zzsd;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/internal/zzsd;->zzadL:Lcom/google/android/gms/internal/zzsd;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gms/internal/zzsd;->zzadM:Lcom/google/android/gms/internal/zzsd;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/gms/internal/zzsd;->zzadN:Lcom/google/android/gms/internal/zzsd;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/gms/internal/zzsd;->zzadO:Lcom/google/android/gms/internal/zzsd;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/gms/internal/zzsd;->zzadP:Lcom/google/android/gms/internal/zzsd;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/internal/zzsd;->zzadQ:[Lcom/google/android/gms/internal/zzsd;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/zzsd;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzsd;->zzadQ:[Lcom/google/android/gms/internal/zzsd;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/zzsd;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/zzsd;

    return-object v0
.end method

.method public static zzbX(Ljava/lang/String;)Lcom/google/android/gms/internal/zzsd;
    .locals 1

    const-string v0, "BATCH_BY_SESSION"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/zzsd;->zzadL:Lcom/google/android/gms/internal/zzsd;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "BATCH_BY_TIME"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/zzsd;->zzadM:Lcom/google/android/gms/internal/zzsd;

    goto :goto_0

    :cond_1
    const-string v0, "BATCH_BY_BRUTE_FORCE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/google/android/gms/internal/zzsd;->zzadN:Lcom/google/android/gms/internal/zzsd;

    goto :goto_0

    :cond_2
    const-string v0, "BATCH_BY_COUNT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/google/android/gms/internal/zzsd;->zzadO:Lcom/google/android/gms/internal/zzsd;

    goto :goto_0

    :cond_3
    const-string v0, "BATCH_BY_SIZE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/google/android/gms/internal/zzsd;->zzadP:Lcom/google/android/gms/internal/zzsd;

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/google/android/gms/internal/zzsd;->zzadK:Lcom/google/android/gms/internal/zzsd;

    goto :goto_0
.end method
