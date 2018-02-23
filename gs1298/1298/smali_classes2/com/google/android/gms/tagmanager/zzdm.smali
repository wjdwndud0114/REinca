.class public Lcom/google/android/gms/tagmanager/zzdm;
.super Ljava/lang/Object;


# static fields
.field private static final zzbGG:Ljava/lang/Object;

.field private static zzbGH:Ljava/lang/Long;

.field private static zzbGI:Ljava/lang/Double;

.field private static zzbGJ:Lcom/google/android/gms/tagmanager/zzdl;

.field private static zzbGK:Ljava/lang/String;

.field private static zzbGL:Ljava/lang/Boolean;

.field private static zzbGM:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static zzbGN:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static zzbGO:Lcom/google/android/gms/internal/zzaj$zza;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzdm;->zzbGG:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, v6, v7}, Ljava/lang/Long;-><init>(J)V

    sput-object v0, Lcom/google/android/gms/tagmanager/zzdm;->zzbGH:Ljava/lang/Long;

    new-instance v0, Ljava/lang/Double;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/lang/Double;-><init>(D)V

    sput-object v0, Lcom/google/android/gms/tagmanager/zzdm;->zzbGI:Ljava/lang/Double;

    invoke-static {v6, v7}, Lcom/google/android/gms/tagmanager/zzdl;->zzax(J)Lcom/google/android/gms/tagmanager/zzdl;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzdm;->zzbGJ:Lcom/google/android/gms/tagmanager/zzdl;

    new-instance v0, Ljava/lang/String;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/tagmanager/zzdm;->zzbGK:Ljava/lang/String;

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, v4}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v0, Lcom/google/android/gms/tagmanager/zzdm;->zzbGL:Ljava/lang/Boolean;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/tagmanager/zzdm;->zzbGM:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/tagmanager/zzdm;->zzbGN:Ljava/util/Map;

    sget-object v0, Lcom/google/android/gms/tagmanager/zzdm;->zzbGK:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdm;->zzR(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzaj$zza;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzdm;->zzbGO:Lcom/google/android/gms/internal/zzaj$zza;

    return-void
.end method

.method private static getDouble(Ljava/lang/Object;)D
    .locals 2

    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-string v0, "getDouble received non-Number"

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbo;->e(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static zzM(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    sget-object v0, Lcom/google/android/gms/tagmanager/zzdm;->zzbGK:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static zzN(Ljava/lang/Object;)Lcom/google/android/gms/tagmanager/zzdl;
    .locals 2

    instance-of v0, p0, Lcom/google/android/gms/tagmanager/zzdl;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/android/gms/tagmanager/zzdl;

    :goto_0
    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzdm;->zzT(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzdm;->zzU(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/tagmanager/zzdl;->zzax(J)Lcom/google/android/gms/tagmanager/zzdl;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzdm;->zzS(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzdm;->getDouble(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdl;->zza(Ljava/lang/Double;)Lcom/google/android/gms/tagmanager/zzdl;

    move-result-object p0

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzdm;->zzM(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdm;->zzhA(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/zzdl;

    move-result-object p0

    goto :goto_0
.end method

.method public static zzO(Ljava/lang/Object;)Ljava/lang/Long;
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzdm;->zzT(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzdm;->zzU(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzdm;->zzM(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdm;->zzhB(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method public static zzP(Ljava/lang/Object;)Ljava/lang/Double;
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzdm;->zzS(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzdm;->getDouble(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzdm;->zzM(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdm;->zzhC(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0
.end method

.method public static zzQ(Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 1

    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Boolean;

    :goto_0
    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzdm;->zzM(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdm;->zzhD(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_0
.end method

.method public static zzQg()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static zzQh()Ljava/lang/Long;
    .locals 1

    sget-object v0, Lcom/google/android/gms/tagmanager/zzdm;->zzbGH:Ljava/lang/Long;

    return-object v0
.end method

.method public static zzQi()Ljava/lang/Double;
    .locals 1

    sget-object v0, Lcom/google/android/gms/tagmanager/zzdm;->zzbGI:Ljava/lang/Double;

    return-object v0
.end method

.method public static zzQj()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Lcom/google/android/gms/tagmanager/zzdm;->zzbGL:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static zzQk()Lcom/google/android/gms/tagmanager/zzdl;
    .locals 1

    sget-object v0, Lcom/google/android/gms/tagmanager/zzdm;->zzbGJ:Lcom/google/android/gms/tagmanager/zzdl;

    return-object v0
.end method

.method public static zzQl()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/gms/tagmanager/zzdm;->zzbGK:Ljava/lang/String;

    return-object v0
.end method

.method public static zzQm()Lcom/google/android/gms/internal/zzaj$zza;
    .locals 1

    sget-object v0, Lcom/google/android/gms/tagmanager/zzdm;->zzbGO:Lcom/google/android/gms/internal/zzaj$zza;

    return-object v0
.end method

.method public static zzR(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzaj$zza;
    .locals 10

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v4, Lcom/google/android/gms/internal/zzaj$zza;

    invoke-direct {v4}, Lcom/google/android/gms/internal/zzaj$zza;-><init>()V

    instance-of v0, p0, Lcom/google/android/gms/internal/zzaj$zza;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/android/gms/internal/zzaj$zza;

    :goto_0
    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    iput v3, v4, Lcom/google/android/gms/internal/zzaj$zza;->type:I

    check-cast p0, Ljava/lang/String;

    iput-object p0, v4, Lcom/google/android/gms/internal/zzaj$zza;->string:Ljava/lang/String;

    :goto_1
    iput-boolean v2, v4, Lcom/google/android/gms/internal/zzaj$zza;->zzlG:Z

    move-object p0, v4

    goto :goto_0

    :cond_1
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_6

    const/4 v0, 0x2

    iput v0, v4, Lcom/google/android/gms/internal/zzaj$zza;->type:I

    check-cast p0, Ljava/util/List;

    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v2

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdm;->zzR(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzaj$zza;

    move-result-object v7

    sget-object v0, Lcom/google/android/gms/tagmanager/zzdm;->zzbGO:Lcom/google/android/gms/internal/zzaj$zza;

    if-ne v7, v0, :cond_2

    sget-object p0, Lcom/google/android/gms/tagmanager/zzdm;->zzbGO:Lcom/google/android/gms/internal/zzaj$zza;

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    iget-boolean v0, v7, Lcom/google/android/gms/internal/zzaj$zza;->zzlG:Z

    if-eqz v0, :cond_4

    :cond_3
    move v0, v3

    :goto_3
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v0

    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_3

    :cond_5
    new-array v0, v2, [Lcom/google/android/gms/internal/zzaj$zza;

    invoke-interface {v5, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/zzaj$zza;

    iput-object v0, v4, Lcom/google/android/gms/internal/zzaj$zza;->zzlx:[Lcom/google/android/gms/internal/zzaj$zza;

    move v2, v1

    goto :goto_1

    :cond_6
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_c

    const/4 v0, 0x3

    iput v0, v4, Lcom/google/android/gms/internal/zzaj$zza;->type:I

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v6, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v1, v2

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/gms/tagmanager/zzdm;->zzR(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzaj$zza;

    move-result-object v8

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdm;->zzR(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzaj$zza;

    move-result-object v9

    sget-object v0, Lcom/google/android/gms/tagmanager/zzdm;->zzbGO:Lcom/google/android/gms/internal/zzaj$zza;

    if-eq v8, v0, :cond_7

    sget-object v0, Lcom/google/android/gms/tagmanager/zzdm;->zzbGO:Lcom/google/android/gms/internal/zzaj$zza;

    if-ne v9, v0, :cond_8

    :cond_7
    sget-object p0, Lcom/google/android/gms/tagmanager/zzdm;->zzbGO:Lcom/google/android/gms/internal/zzaj$zza;

    goto/16 :goto_0

    :cond_8
    if-nez v1, :cond_9

    iget-boolean v0, v8, Lcom/google/android/gms/internal/zzaj$zza;->zzlG:Z

    if-nez v0, :cond_9

    iget-boolean v0, v9, Lcom/google/android/gms/internal/zzaj$zza;->zzlG:Z

    if-eqz v0, :cond_a

    :cond_9
    move v0, v3

    :goto_5
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v0

    goto :goto_4

    :cond_a
    move v0, v2

    goto :goto_5

    :cond_b
    new-array v0, v2, [Lcom/google/android/gms/internal/zzaj$zza;

    invoke-interface {v5, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/zzaj$zza;

    iput-object v0, v4, Lcom/google/android/gms/internal/zzaj$zza;->zzly:[Lcom/google/android/gms/internal/zzaj$zza;

    new-array v0, v2, [Lcom/google/android/gms/internal/zzaj$zza;

    invoke-interface {v6, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/zzaj$zza;

    iput-object v0, v4, Lcom/google/android/gms/internal/zzaj$zza;->zzlz:[Lcom/google/android/gms/internal/zzaj$zza;

    move v2, v1

    goto/16 :goto_1

    :cond_c
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzdm;->zzS(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iput v3, v4, Lcom/google/android/gms/internal/zzaj$zza;->type:I

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/google/android/gms/internal/zzaj$zza;->string:Ljava/lang/String;

    goto/16 :goto_1

    :cond_d
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzdm;->zzT(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x6

    iput v0, v4, Lcom/google/android/gms/internal/zzaj$zza;->type:I

    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzdm;->zzU(Ljava/lang/Object;)J

    move-result-wide v0

    iput-wide v0, v4, Lcom/google/android/gms/internal/zzaj$zza;->zzlC:J

    goto/16 :goto_1

    :cond_e
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_f

    const/16 v0, 0x8

    iput v0, v4, Lcom/google/android/gms/internal/zzaj$zza;->type:I

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, v4, Lcom/google/android/gms/internal/zzaj$zza;->zzlD:Z

    goto/16 :goto_1

    :cond_f
    const-string v1, "Converting to Value from unknown object type: "

    if-nez p0, :cond_10

    const-string v0, "null"

    :goto_6
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_7
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbo;->e(Ljava/lang/String;)V

    sget-object p0, Lcom/google/android/gms/tagmanager/zzdm;->zzbGO:Lcom/google/android/gms/internal/zzaj$zza;

    goto/16 :goto_0

    :cond_10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_11
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_7
.end method

.method private static zzS(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p0, Ljava/lang/Double;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Float;

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/google/android/gms/tagmanager/zzdl;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/google/android/gms/tagmanager/zzdl;

    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/zzdl;->zzQb()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static zzT(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p0, Ljava/lang/Byte;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Short;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Long;

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/google/android/gms/tagmanager/zzdl;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/google/android/gms/tagmanager/zzdl;

    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/zzdl;->zzQc()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static zzU(Ljava/lang/Object;)J
    .locals 2

    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-string v0, "getInt64 received non-Number"

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbo;->e(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static zze(Lcom/google/android/gms/internal/zzaj$zza;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzdm;->zzj(Lcom/google/android/gms/internal/zzaj$zza;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdm;->zzM(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static zzf(Lcom/google/android/gms/internal/zzaj$zza;)Lcom/google/android/gms/tagmanager/zzdl;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzdm;->zzj(Lcom/google/android/gms/internal/zzaj$zza;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdm;->zzN(Ljava/lang/Object;)Lcom/google/android/gms/tagmanager/zzdl;

    move-result-object v0

    return-object v0
.end method

.method public static zzg(Lcom/google/android/gms/internal/zzaj$zza;)Ljava/lang/Long;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzdm;->zzj(Lcom/google/android/gms/internal/zzaj$zza;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdm;->zzO(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public static zzh(Lcom/google/android/gms/internal/zzaj$zza;)Ljava/lang/Double;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzdm;->zzj(Lcom/google/android/gms/internal/zzaj$zza;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdm;->zzP(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method private static zzhA(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/zzdl;
    .locals 2

    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzdl;->zzhy(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/zzdl;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x21

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Failed to convert \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' to a number."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbo;->e(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/tagmanager/zzdm;->zzbGJ:Lcom/google/android/gms/tagmanager/zzdl;

    goto :goto_0
.end method

.method private static zzhB(Ljava/lang/String;)Ljava/lang/Long;
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzdm;->zzhA(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/zzdl;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/tagmanager/zzdm;->zzbGJ:Lcom/google/android/gms/tagmanager/zzdl;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/google/android/gms/tagmanager/zzdm;->zzbGH:Ljava/lang/Long;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzdl;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method private static zzhC(Ljava/lang/String;)Ljava/lang/Double;
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzdm;->zzhA(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/zzdl;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/tagmanager/zzdm;->zzbGJ:Lcom/google/android/gms/tagmanager/zzdl;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/google/android/gms/tagmanager/zzdm;->zzbGI:Ljava/lang/Double;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzdl;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0
.end method

.method private static zzhD(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    const-string v0, "true"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "false"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/google/android/gms/tagmanager/zzdm;->zzbGL:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public static zzhz(Ljava/lang/String;)Lcom/google/android/gms/internal/zzaj$zza;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzaj$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzaj$zza;-><init>()V

    const/4 v1, 0x5

    iput v1, v0, Lcom/google/android/gms/internal/zzaj$zza;->type:I

    iput-object p0, v0, Lcom/google/android/gms/internal/zzaj$zza;->zzlB:Ljava/lang/String;

    return-object v0
.end method

.method public static zzi(Lcom/google/android/gms/internal/zzaj$zza;)Ljava/lang/Boolean;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzdm;->zzj(Lcom/google/android/gms/internal/zzaj$zza;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdm;->zzQ(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static zzj(Lcom/google/android/gms/internal/zzaj$zza;)Ljava/lang/Object;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget v2, p0, Lcom/google/android/gms/internal/zzaj$zza;->type:I

    packed-switch v2, :pswitch_data_0

    iget v0, p0, Lcom/google/android/gms/internal/zzaj$zza;->type:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x2e

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Failed to convert a value of type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbo;->e(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaj$zza;->string:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaj$zza;->zzlx:[Lcom/google/android/gms/internal/zzaj$zza;

    array-length v3, v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaj$zza;->zzlx:[Lcom/google/android/gms/internal/zzaj$zza;

    array-length v4, v3

    :goto_1
    if-ge v0, v4, :cond_2

    aget-object v5, v3, v0

    invoke-static {v5}, Lcom/google/android/gms/tagmanager/zzdm;->zzj(Lcom/google/android/gms/internal/zzaj$zza;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v2

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/google/android/gms/internal/zzaj$zza;->zzly:[Lcom/google/android/gms/internal/zzaj$zza;

    array-length v2, v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaj$zza;->zzlz:[Lcom/google/android/gms/internal/zzaj$zza;

    array-length v3, v3

    if-eq v2, v3, :cond_4

    const-string v2, "Converting an invalid value to object: "

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaj$zza;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbo;->e(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    new-instance v2, Ljava/util/HashMap;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaj$zza;->zzlz:[Lcom/google/android/gms/internal/zzaj$zza;

    array-length v3, v3

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    :goto_3
    iget-object v3, p0, Lcom/google/android/gms/internal/zzaj$zza;->zzly:[Lcom/google/android/gms/internal/zzaj$zza;

    array-length v3, v3

    if-ge v0, v3, :cond_7

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaj$zza;->zzly:[Lcom/google/android/gms/internal/zzaj$zza;

    aget-object v3, v3, v0

    invoke-static {v3}, Lcom/google/android/gms/tagmanager/zzdm;->zzj(Lcom/google/android/gms/internal/zzaj$zza;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/zzaj$zza;->zzlz:[Lcom/google/android/gms/internal/zzaj$zza;

    aget-object v4, v4, v0

    invoke-static {v4}, Lcom/google/android/gms/tagmanager/zzdm;->zzj(Lcom/google/android/gms/internal/zzaj$zza;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v3, :cond_5

    if-nez v4, :cond_6

    :cond_5
    move-object v0, v1

    goto/16 :goto_0

    :cond_6
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    move-object v0, v2

    goto/16 :goto_0

    :pswitch_3
    const-string v0, "Trying to convert a macro reference to object"

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbo;->e(Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_0

    :pswitch_4
    const-string v0, "Trying to convert a function id to object"

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbo;->e(Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_0

    :pswitch_5
    iget-wide v0, p0, Lcom/google/android/gms/internal/zzaj$zza;->zzlC:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_6
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaj$zza;->zzlE:[Lcom/google/android/gms/internal/zzaj$zza;

    array-length v4, v3

    :goto_4
    if-ge v0, v4, :cond_9

    aget-object v5, v3, v0

    invoke-static {v5}, Lcom/google/android/gms/tagmanager/zzdm;->zze(Lcom/google/android/gms/internal/zzaj$zza;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/google/android/gms/tagmanager/zzdm;->zzbGK:Ljava/lang/String;

    if-ne v5, v6, :cond_8

    move-object v0, v1

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_9
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_7
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaj$zza;->zzlD:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
