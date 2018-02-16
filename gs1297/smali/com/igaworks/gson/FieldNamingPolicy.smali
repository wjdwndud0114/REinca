.class public abstract enum Lcom/igaworks/gson/FieldNamingPolicy;
.super Ljava/lang/Enum;
.source "FieldNamingPolicy.java"

# interfaces
.implements Lcom/igaworks/gson/FieldNamingStrategy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/igaworks/gson/FieldNamingPolicy;",
        ">;",
        "Lcom/igaworks/gson/FieldNamingStrategy;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/igaworks/gson/FieldNamingPolicy;

.field public static final enum IDENTITY:Lcom/igaworks/gson/FieldNamingPolicy;

.field public static final enum LOWER_CASE_WITH_DASHES:Lcom/igaworks/gson/FieldNamingPolicy;

.field public static final enum LOWER_CASE_WITH_UNDERSCORES:Lcom/igaworks/gson/FieldNamingPolicy;

.field public static final enum UPPER_CAMEL_CASE:Lcom/igaworks/gson/FieldNamingPolicy;

.field public static final enum UPPER_CAMEL_CASE_WITH_SPACES:Lcom/igaworks/gson/FieldNamingPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 37
    new-instance v0, Lcom/igaworks/gson/FieldNamingPolicy$1;

    const-string v1, "IDENTITY"

    invoke-direct {v0, v1, v2}, Lcom/igaworks/gson/FieldNamingPolicy$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/igaworks/gson/FieldNamingPolicy;->IDENTITY:Lcom/igaworks/gson/FieldNamingPolicy;

    .line 53
    new-instance v0, Lcom/igaworks/gson/FieldNamingPolicy$2;

    const-string v1, "UPPER_CAMEL_CASE"

    invoke-direct {v0, v1, v3}, Lcom/igaworks/gson/FieldNamingPolicy$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/igaworks/gson/FieldNamingPolicy;->UPPER_CAMEL_CASE:Lcom/igaworks/gson/FieldNamingPolicy;

    .line 72
    new-instance v0, Lcom/igaworks/gson/FieldNamingPolicy$3;

    const-string v1, "UPPER_CAMEL_CASE_WITH_SPACES"

    invoke-direct {v0, v1, v4}, Lcom/igaworks/gson/FieldNamingPolicy$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/igaworks/gson/FieldNamingPolicy;->UPPER_CAMEL_CASE_WITH_SPACES:Lcom/igaworks/gson/FieldNamingPolicy;

    .line 90
    new-instance v0, Lcom/igaworks/gson/FieldNamingPolicy$4;

    const-string v1, "LOWER_CASE_WITH_UNDERSCORES"

    invoke-direct {v0, v1, v5}, Lcom/igaworks/gson/FieldNamingPolicy$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/igaworks/gson/FieldNamingPolicy;->LOWER_CASE_WITH_UNDERSCORES:Lcom/igaworks/gson/FieldNamingPolicy;

    .line 113
    new-instance v0, Lcom/igaworks/gson/FieldNamingPolicy$5;

    const-string v1, "LOWER_CASE_WITH_DASHES"

    invoke-direct {v0, v1, v6}, Lcom/igaworks/gson/FieldNamingPolicy$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/igaworks/gson/FieldNamingPolicy;->LOWER_CASE_WITH_DASHES:Lcom/igaworks/gson/FieldNamingPolicy;

    .line 31
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/igaworks/gson/FieldNamingPolicy;

    sget-object v1, Lcom/igaworks/gson/FieldNamingPolicy;->IDENTITY:Lcom/igaworks/gson/FieldNamingPolicy;

    aput-object v1, v0, v2

    sget-object v1, Lcom/igaworks/gson/FieldNamingPolicy;->UPPER_CAMEL_CASE:Lcom/igaworks/gson/FieldNamingPolicy;

    aput-object v1, v0, v3

    sget-object v1, Lcom/igaworks/gson/FieldNamingPolicy;->UPPER_CAMEL_CASE_WITH_SPACES:Lcom/igaworks/gson/FieldNamingPolicy;

    aput-object v1, v0, v4

    sget-object v1, Lcom/igaworks/gson/FieldNamingPolicy;->LOWER_CASE_WITH_UNDERSCORES:Lcom/igaworks/gson/FieldNamingPolicy;

    aput-object v1, v0, v5

    sget-object v1, Lcom/igaworks/gson/FieldNamingPolicy;->LOWER_CASE_WITH_DASHES:Lcom/igaworks/gson/FieldNamingPolicy;

    aput-object v1, v0, v6

    sput-object v0, Lcom/igaworks/gson/FieldNamingPolicy;->$VALUES:[Lcom/igaworks/gson/FieldNamingPolicy;

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
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/igaworks/gson/FieldNamingPolicy$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/igaworks/gson/FieldNamingPolicy$1;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/igaworks/gson/FieldNamingPolicy;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static modifyString(CLjava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "firstCharacter"    # C
    .param p1, "srcString"    # Ljava/lang/String;
    .param p2, "indexOfSubstring"    # I

    .prologue
    .line 162
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p2, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 163
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 162
    :goto_0
    return-object v0

    .line 164
    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static separateCamelCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;

    .prologue
    .line 124
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .local v3, "translation":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, "length":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 126
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 127
    .local v0, "character":C
    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_0

    .line 128
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    :cond_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 125
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 132
    .end local v0    # "character":C
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method static upperCaseFirstLetter(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    .local v0, "fieldNameBuilder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 141
    .local v2, "index":I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 142
    .local v1, "firstCharacter":C
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 144
    .local v3, "length":I
    :goto_0
    add-int/lit8 v5, v3, -0x1

    if-ge v2, v5, :cond_0

    .line 145
    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 153
    :cond_0
    invoke-static {v1}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v5

    if-nez v5, :cond_1

    .line 154
    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    add-int/lit8 v2, v2, 0x1

    invoke-static {v5, p0, v2}, Lcom/igaworks/gson/FieldNamingPolicy;->modifyString(CLjava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 155
    .local v4, "modifiedTarget":Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 157
    .end local v4    # "modifiedTarget":Ljava/lang/String;
    .end local p0    # "name":Ljava/lang/String;
    :cond_1
    return-object p0

    .line 149
    .restart local p0    # "name":Ljava/lang/String;
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 150
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/igaworks/gson/FieldNamingPolicy;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 31
    const-class v0, Lcom/igaworks/gson/FieldNamingPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/igaworks/gson/FieldNamingPolicy;

    return-object v0
.end method

.method public static values()[Lcom/igaworks/gson/FieldNamingPolicy;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/igaworks/gson/FieldNamingPolicy;->$VALUES:[Lcom/igaworks/gson/FieldNamingPolicy;

    invoke-virtual {v0}, [Lcom/igaworks/gson/FieldNamingPolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/igaworks/gson/FieldNamingPolicy;

    return-object v0
.end method
