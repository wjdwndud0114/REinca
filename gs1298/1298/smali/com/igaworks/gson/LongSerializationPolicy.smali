.class public abstract enum Lcom/igaworks/gson/LongSerializationPolicy;
.super Ljava/lang/Enum;
.source "LongSerializationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/igaworks/gson/LongSerializationPolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/igaworks/gson/LongSerializationPolicy;

.field public static final enum DEFAULT:Lcom/igaworks/gson/LongSerializationPolicy;

.field public static final enum STRING:Lcom/igaworks/gson/LongSerializationPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 34
    new-instance v0, Lcom/igaworks/gson/LongSerializationPolicy$1;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v2}, Lcom/igaworks/gson/LongSerializationPolicy$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/igaworks/gson/LongSerializationPolicy;->DEFAULT:Lcom/igaworks/gson/LongSerializationPolicy;

    .line 45
    new-instance v0, Lcom/igaworks/gson/LongSerializationPolicy$2;

    const-string v1, "STRING"

    invoke-direct {v0, v1, v3}, Lcom/igaworks/gson/LongSerializationPolicy$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/igaworks/gson/LongSerializationPolicy;->STRING:Lcom/igaworks/gson/LongSerializationPolicy;

    .line 27
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/igaworks/gson/LongSerializationPolicy;

    sget-object v1, Lcom/igaworks/gson/LongSerializationPolicy;->DEFAULT:Lcom/igaworks/gson/LongSerializationPolicy;

    aput-object v1, v0, v2

    sget-object v1, Lcom/igaworks/gson/LongSerializationPolicy;->STRING:Lcom/igaworks/gson/LongSerializationPolicy;

    aput-object v1, v0, v3

    sput-object v0, Lcom/igaworks/gson/LongSerializationPolicy;->$VALUES:[Lcom/igaworks/gson/LongSerializationPolicy;

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
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/igaworks/gson/LongSerializationPolicy$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/igaworks/gson/LongSerializationPolicy$1;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/igaworks/gson/LongSerializationPolicy;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/igaworks/gson/LongSerializationPolicy;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 27
    const-class v0, Lcom/igaworks/gson/LongSerializationPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/igaworks/gson/LongSerializationPolicy;

    return-object v0
.end method

.method public static values()[Lcom/igaworks/gson/LongSerializationPolicy;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/igaworks/gson/LongSerializationPolicy;->$VALUES:[Lcom/igaworks/gson/LongSerializationPolicy;

    invoke-virtual {v0}, [Lcom/igaworks/gson/LongSerializationPolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/igaworks/gson/LongSerializationPolicy;

    return-object v0
.end method


# virtual methods
.method public abstract serialize(Ljava/lang/Long;)Lcom/igaworks/gson/JsonElement;
.end method
