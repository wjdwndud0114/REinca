.class public final enum Lcom/unity3d/ads/device/StorageError;
.super Ljava/lang/Enum;
.source "StorageError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/unity3d/ads/device/StorageError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/unity3d/ads/device/StorageError;

.field public static final enum COULDNT_CLEAR_STORAGE:Lcom/unity3d/ads/device/StorageError;

.field public static final enum COULDNT_DELETE_VALUE:Lcom/unity3d/ads/device/StorageError;

.field public static final enum COULDNT_GET_STORAGE:Lcom/unity3d/ads/device/StorageError;

.field public static final enum COULDNT_GET_VALUE:Lcom/unity3d/ads/device/StorageError;

.field public static final enum COULDNT_SET_VALUE:Lcom/unity3d/ads/device/StorageError;

.field public static final enum COULDNT_WRITE_STORAGE_TO_CACHE:Lcom/unity3d/ads/device/StorageError;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4
    new-instance v0, Lcom/unity3d/ads/device/StorageError;

    const-string v1, "COULDNT_SET_VALUE"

    invoke-direct {v0, v1, v3}, Lcom/unity3d/ads/device/StorageError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/device/StorageError;->COULDNT_SET_VALUE:Lcom/unity3d/ads/device/StorageError;

    .line 5
    new-instance v0, Lcom/unity3d/ads/device/StorageError;

    const-string v1, "COULDNT_GET_VALUE"

    invoke-direct {v0, v1, v4}, Lcom/unity3d/ads/device/StorageError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/device/StorageError;->COULDNT_GET_VALUE:Lcom/unity3d/ads/device/StorageError;

    .line 6
    new-instance v0, Lcom/unity3d/ads/device/StorageError;

    const-string v1, "COULDNT_WRITE_STORAGE_TO_CACHE"

    invoke-direct {v0, v1, v5}, Lcom/unity3d/ads/device/StorageError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/device/StorageError;->COULDNT_WRITE_STORAGE_TO_CACHE:Lcom/unity3d/ads/device/StorageError;

    .line 7
    new-instance v0, Lcom/unity3d/ads/device/StorageError;

    const-string v1, "COULDNT_CLEAR_STORAGE"

    invoke-direct {v0, v1, v6}, Lcom/unity3d/ads/device/StorageError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/device/StorageError;->COULDNT_CLEAR_STORAGE:Lcom/unity3d/ads/device/StorageError;

    .line 8
    new-instance v0, Lcom/unity3d/ads/device/StorageError;

    const-string v1, "COULDNT_GET_STORAGE"

    invoke-direct {v0, v1, v7}, Lcom/unity3d/ads/device/StorageError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/device/StorageError;->COULDNT_GET_STORAGE:Lcom/unity3d/ads/device/StorageError;

    .line 9
    new-instance v0, Lcom/unity3d/ads/device/StorageError;

    const-string v1, "COULDNT_DELETE_VALUE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/device/StorageError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/device/StorageError;->COULDNT_DELETE_VALUE:Lcom/unity3d/ads/device/StorageError;

    .line 3
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/unity3d/ads/device/StorageError;

    sget-object v1, Lcom/unity3d/ads/device/StorageError;->COULDNT_SET_VALUE:Lcom/unity3d/ads/device/StorageError;

    aput-object v1, v0, v3

    sget-object v1, Lcom/unity3d/ads/device/StorageError;->COULDNT_GET_VALUE:Lcom/unity3d/ads/device/StorageError;

    aput-object v1, v0, v4

    sget-object v1, Lcom/unity3d/ads/device/StorageError;->COULDNT_WRITE_STORAGE_TO_CACHE:Lcom/unity3d/ads/device/StorageError;

    aput-object v1, v0, v5

    sget-object v1, Lcom/unity3d/ads/device/StorageError;->COULDNT_CLEAR_STORAGE:Lcom/unity3d/ads/device/StorageError;

    aput-object v1, v0, v6

    sget-object v1, Lcom/unity3d/ads/device/StorageError;->COULDNT_GET_STORAGE:Lcom/unity3d/ads/device/StorageError;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/unity3d/ads/device/StorageError;->COULDNT_DELETE_VALUE:Lcom/unity3d/ads/device/StorageError;

    aput-object v2, v0, v1

    sput-object v0, Lcom/unity3d/ads/device/StorageError;->$VALUES:[Lcom/unity3d/ads/device/StorageError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unity3d/ads/device/StorageError;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/unity3d/ads/device/StorageError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/device/StorageError;

    return-object v0
.end method

.method public static values()[Lcom/unity3d/ads/device/StorageError;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/unity3d/ads/device/StorageError;->$VALUES:[Lcom/unity3d/ads/device/StorageError;

    invoke-virtual {v0}, [Lcom/unity3d/ads/device/StorageError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unity3d/ads/device/StorageError;

    return-object v0
.end method
