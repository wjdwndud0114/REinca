.class public final enum Lcom/igaworks/adbrix/interfaces/ADBrixInterface$CohortVariable;
.super Ljava/lang/Enum;
.source "ADBrixInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/igaworks/adbrix/interfaces/ADBrixInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CohortVariable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/igaworks/adbrix/interfaces/ADBrixInterface$CohortVariable;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/igaworks/adbrix/interfaces/ADBrixInterface$CohortVariable;

.field public static final enum COHORT_1:Lcom/igaworks/adbrix/interfaces/ADBrixInterface$CohortVariable;

.field public static final enum COHORT_2:Lcom/igaworks/adbrix/interfaces/ADBrixInterface$CohortVariable;

.field public static final enum COHORT_3:Lcom/igaworks/adbrix/interfaces/ADBrixInterface$CohortVariable;


# instance fields
.field private cohortName:Ljava/lang/String;

.field private cohortNum:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 24
    new-instance v0, Lcom/igaworks/adbrix/interfaces/ADBrixInterface$CohortVariable;

    const-string v1, "COHORT_1"

    const-string v2, "custom_cohort_1"

    invoke-direct {v0, v1, v5, v3, v2}, Lcom/igaworks/adbrix/interfaces/ADBrixInterface$CohortVariable;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/igaworks/adbrix/interfaces/ADBrixInterface$CohortVariable;->COHORT_1:Lcom/igaworks/adbrix/interfaces/ADBrixInterface$CohortVariable;

    new-instance v0, Lcom/igaworks/adbrix/interfaces/ADBrixInterface$CohortVariable;

    const-string v1, "COHORT_2"

    const-string v2, "custom_cohort_2"

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/igaworks/adbrix/interfaces/ADBrixInterface$CohortVariable;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/igaworks/adbrix/interfaces/ADBrixInterface$CohortVariable;->COHORT_2:Lcom/igaworks/adbrix/interfaces/ADBrixInterface$CohortVariable;

    new-instance v0, Lcom/igaworks/adbrix/interfaces/ADBrixInterface$CohortVariable;

    const-string v1, "COHORT_3"

    const-string v2, "custom_cohort_3"

    invoke-direct {v0, v1, v4, v6, v2}, Lcom/igaworks/adbrix/interfaces/ADBrixInterface$CohortVariable;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/igaworks/adbrix/interfaces/ADBrixInterface$CohortVariable;->COHORT_3:Lcom/igaworks/adbrix/interfaces/ADBrixInterface$CohortVariable;

    .line 22
    new-array v0, v6, [Lcom/igaworks/adbrix/interfaces/ADBrixInterface$CohortVariable;

    sget-object v1, Lcom/igaworks/adbrix/interfaces/ADBrixInterface$CohortVariable;->COHORT_1:Lcom/igaworks/adbrix/interfaces/ADBrixInterface$CohortVariable;

    aput-object v1, v0, v5

    sget-object v1, Lcom/igaworks/adbrix/interfaces/ADBrixInterface$CohortVariable;->COHORT_2:Lcom/igaworks/adbrix/interfaces/ADBrixInterface$CohortVariable;

    aput-object v1, v0, v3

    sget-object v1, Lcom/igaworks/adbrix/interfaces/ADBrixInterface$CohortVariable;->COHORT_3:Lcom/igaworks/adbrix/interfaces/ADBrixInterface$CohortVariable;

    aput-object v1, v0, v4

    sput-object v0, Lcom/igaworks/adbrix/interfaces/ADBrixInterface$CohortVariable;->$VALUES:[Lcom/igaworks/adbrix/interfaces/ADBrixInterface$CohortVariable;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p3, "cohortNum"    # I
    .param p4, "cohortName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 30
    iput p3, p0, Lcom/igaworks/adbrix/interfaces/ADBrixInterface$CohortVariable;->cohortNum:I

    .line 31
    iput-object p4, p0, Lcom/igaworks/adbrix/interfaces/ADBrixInterface$CohortVariable;->cohortName:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/igaworks/adbrix/interfaces/ADBrixInterface$CohortVariable;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 22
    const-class v0, Lcom/igaworks/adbrix/interfaces/ADBrixInterface$CohortVariable;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/igaworks/adbrix/interfaces/ADBrixInterface$CohortVariable;

    return-object v0
.end method

.method public static values()[Lcom/igaworks/adbrix/interfaces/ADBrixInterface$CohortVariable;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/igaworks/adbrix/interfaces/ADBrixInterface$CohortVariable;->$VALUES:[Lcom/igaworks/adbrix/interfaces/ADBrixInterface$CohortVariable;

    invoke-virtual {v0}, [Lcom/igaworks/adbrix/interfaces/ADBrixInterface$CohortVariable;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/igaworks/adbrix/interfaces/ADBrixInterface$CohortVariable;

    return-object v0
.end method


# virtual methods
.method public toInteger()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/igaworks/adbrix/interfaces/ADBrixInterface$CohortVariable;->cohortNum:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/igaworks/adbrix/interfaces/ADBrixInterface$CohortVariable;->cohortName:Ljava/lang/String;

    return-object v0
.end method
