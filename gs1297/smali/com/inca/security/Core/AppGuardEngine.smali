.class public Lcom/inca/security/Core/AppGuardEngine;
.super Ljava/lang/Object;
.source "mc"

# interfaces
.implements Lcom/inca/security/Interface/BaseEventInvoker;
.implements Lcom/inca/security/w;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inca/security/cc;,
        Lcom/inca/security/nc;,
        Lcom/inca/security/dc;,
        Lcom/inca/security/qc;,
        Lcom/inca/security/sc;,
        Lcom/inca/security/fc;
    }
.end annotation


# static fields
.field private static synthetic IIIiIIiIIi:Lcom/inca/security/Interface/ObjectFactory; = null

.field private static synthetic IIIiIIiiii:Ljava/lang/String; = null

.field private static synthetic IIIiiIIiii:Ljava/lang/String; = null

.field private static synthetic IIiIIIIiIi:Lcom/inca/security/AppGuard/SecureLibrary; = null

.field public static final synthetic iIIIiiIIiI:I = 0x1

.field public static final synthetic iIIiIiIIII:I = 0x2

.field public static final synthetic iIiiIIIiII:I


# instance fields
.field private synthetic IIIIiIIiii:J

.field private final synthetic IIIIiiIiII:I

.field private synthetic IIIIiiIiiI:Z

.field private final synthetic IIIiIIIiiI:I

.field private synthetic IIIiIIiIiI:Z

.field private synthetic IIIiIiIiii:J

.field private synthetic IIIiIiiiII:Lcom/inca/security/nc;

.field private synthetic IIIiIiiiIi:Z

.field private synthetic IIIiIiiiii:Z

.field private synthetic IIIiiiiIII:J

.field private synthetic IIiIIIIIii:Ljava/lang/String;

.field private synthetic IIiIIiIIiI:[B

.field private synthetic IIiIIiiiiI:J

.field private synthetic IIiIiIIIii:Lcom/inca/security/Core/WeakRefHandler;

.field private synthetic IIiiIIIiIi:Lcom/inca/security/Interface/ObjectIntegrityManager;

.field private synthetic IIiiIiIIii:Ljava/lang/String;

.field private synthetic IIiiiIIIIi:[Z

.field private synthetic IIiiiIIiII:J

.field private synthetic IIiiiiiIIi:Lcom/inca/security/Core/AppGuardEngine;

.field private synthetic IiIIIIIiII:[Z

.field private synthetic IiIIIIiIIi:Lcom/inca/security/dc;

.field private synthetic IiIIIiIIIi:Lcom/inca/security/qc;

.field private synthetic IiIIiIIIIi:Ljava/util/ArrayList;

.field private synthetic IiIiIIIiIi:Z

.field private synthetic IiIiIiIiII:Landroid/os/Handler;

.field private synthetic IiIiIiiIii:[Ljava/lang/String;

.field private synthetic IiiIIIIIii:I

.field private synthetic IiiIiIIiII:Z

.field private synthetic IiiIiIIiIi:Ljava/lang/String;

.field private synthetic IiiIiIIiiI:Z

.field private synthetic IiiIiiiIiI:[B

.field private synthetic IiiIiiiiii:Landroid/content/BroadcastReceiver;

.field private final synthetic IiiiIIIiIi:I

.field private synthetic IiiiIIiIII:Ljava/lang/String;

.field private synthetic IiiiiIIIIi:Lcom/inca/security/c;

.field private synthetic IiiiiIiiIi:J

.field private synthetic iIIIIIiIII:Ljava/lang/Object;

.field private synthetic iIIIiIiiii:[Ljava/lang/String;

.field private final synthetic iIIIiiIIIi:I

.field private final synthetic iIIiIIIIIi:I

.field private synthetic iIIiIIIIiI:Z

.field private final synthetic iIIiIIiIiI:I

.field private final synthetic iIiiIiIiII:I

.field private synthetic iIiiiIIiIi:Ljava/util/Queue;

.field private synthetic iIiiiiiIIi:Landroid/os/Handler;

.field private synthetic iiIIIIIiIi:Ljava/lang/Thread;

.field private final synthetic iiIIIIIiiI:I

.field private synthetic iiIIIiiiiI:Z

.field private synthetic iiIIiIIiII:Z

.field private synthetic iiIIiIIiii:Z

.field private synthetic iiIIiIiIii:Ljava/lang/Object;

.field private synthetic iiIIiiiiii:Z

.field private final synthetic iiIiIIIiiI:I

.field private synthetic iiIiIIIiii:I

.field private synthetic iiIiiIIIii:J

.field private synthetic iiiIIIIiII:J

.field private synthetic iiiIIIiiII:Lcom/inca/security/AppGuard/AppGuardEventListener;

.field private synthetic iiiIIiIiiI:Landroid/os/Handler;

.field private synthetic iiiIiIIIII:Ljava/lang/String;

.field private synthetic iiiIiiIiIi:Z

.field private synthetic iiiIiiiiII:Lcom/inca/security/ub;

.field private synthetic iiiiIIIiii:Lcom/inca/security/uc;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 108
    sput-object v1, Lcom/inca/security/Core/AppGuardEngine;->IIiIIIIiIi:Lcom/inca/security/AppGuard/SecureLibrary;

    .line 125
    sput-object v1, Lcom/inca/security/Core/AppGuardEngine;->IIIiIIiIIi:Lcom/inca/security/Interface/ObjectFactory;

    .line 76
    const-string v0, "armeabi"

    sput-object v0, Lcom/inca/security/Core/AppGuardEngine;->IIIiIIiiii:Ljava/lang/String;

    .line 41
    sput-object v1, Lcom/inca/security/Core/AppGuardEngine;->IIIiiIIiii:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/inca/security/AppGuard/AppGuardEventListener;Z)V
    .locals 49
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Lcom/inca/security/AppGuard/AppGuardEventListener;
    .param p3, "arg2"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 1080
    const/16 v5, 0x40

    const/4 v6, 0x0

    const/16 v7, 0x10

    const/4 v8, 0x0

    const-string v9, ""

    const/16 v10, 0x1388

    const/16 v11, 0x7c6

    const/16 v12, 0x3e9

    const/16 v13, 0x3e8

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-string v17, "E1DD24DB6DB24420A16DC47BAB87.cra"

    const/16 v18, 0x4

    const/16 v19, 0x3

    const/16 v20, 0x2

    const/16 v21, 0x1

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x1

    const-wide/16 v26, 0x0

    const-wide/16 v28, 0x0

    const-wide/16 v30, 0x0

    const-wide/16 v32, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const-wide/16 v36, -0x1

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 100
    move-object/from16 v0, v48

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/inca/security/Core/AppGuardEngine;->iiiIIIiiII:Lcom/inca/security/AppGuard/AppGuardEventListener;

    .line 33
    move-object/from16 v0, v47

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/inca/security/Core/AppGuardEngine;->IIiiiiiIIi:Lcom/inca/security/Core/AppGuardEngine;

    .line 164
    move-object/from16 v0, v47

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/inca/security/Core/AppGuardEngine;->IiiIiIIiIi:Ljava/lang/String;

    .line 188
    move-object/from16 v0, v46

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/inca/security/Core/AppGuardEngine;->IiIiIiIiII:Landroid/os/Handler;

    .line 86
    move-object/from16 v0, v46

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/inca/security/Core/AppGuardEngine;->iIiiiiiIIi:Landroid/os/Handler;

    .line 204
    move-object/from16 v0, v45

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/inca/security/Core/AppGuardEngine;->iiiIIiIiiI:Landroid/os/Handler;

    .line 183
    move/from16 v0, v44

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/inca/security/Core/AppGuardEngine;->IIIiIiiiIi:Z

    .line 133
    move-object/from16 v0, v43

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/inca/security/Core/AppGuardEngine;->IIiiIiIIii:Ljava/lang/String;

    .line 170
    move-object/from16 v0, v43

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/inca/security/Core/AppGuardEngine;->IiIIIiIIIi:Lcom/inca/security/qc;

    .line 163
    move-object/from16 v0, v42

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/inca/security/Core/AppGuardEngine;->IiIIIIiIIi:Lcom/inca/security/dc;

    .line 189
    move/from16 v0, v41

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/inca/security/Core/AppGuardEngine;->IIIIiiIiiI:Z

    .line 178
    move/from16 v0, v40

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/inca/security/Core/AppGuardEngine;->IIIiIiiiii:Z

    .line 68
    move-object/from16 v0, v39

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/inca/security/Core/AppGuardEngine;->IiiIiiiiii:Landroid/content/BroadcastReceiver;

    .line 103
    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/inca/security/Core/AppGuardEngine;->iiIIIIIiIi:Ljava/lang/Thread;

    .line 13
    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/inca/security/Core/AppGuardEngine;->IiiiiIIIIi:Lcom/inca/security/c;

    .line 60
    move-wide/from16 v0, v36

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/inca/security/Core/AppGuardEngine;->IIIiiiiIII:J

    .line 54
    move-wide/from16 v0, v36

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/inca/security/Core/AppGuardEngine;->IIiiiIIiII:J

    .line 109
    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/inca/security/Core/AppGuardEngine;->IiiIIIIIii:I

    .line 10
    move/from16 v0, v35

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/inca/security/Core/AppGuardEngine;->IIIiIIiIiI:Z

    .line 156
    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/inca/security/Core/AppGuardEngine;->IiIiIIIiIi:Z

    .line 47
    new-instance v34, Ljava/util/ArrayList;

    invoke-direct/range {v34 .. v34}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/inca/security/Core/AppGuardEngine;->IiIIiIIIIi:Ljava/util/ArrayList;

    .line 39
    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/inca/security/Core/AppGuardEngine;->iiIiiIIIii:J

    .line 135
    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/inca/security/Core/AppGuardEngine;->iiiIIIIiII:J

    .line 145
    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/inca/security/Core/AppGuardEngine;->IIIIiIIiii:J

    .line 82
    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/inca/security/Core/AppGuardEngine;->IIiIIiiiiI:J

    .line 20
    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/inca/security/Core/AppGuardEngine;->IIIiIiIiii:J

    .line 93
    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/inca/security/Core/AppGuardEngine;->IiiiiIiiIi:J

    .line 198
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/inca/security/Core/AppGuardEngine;->iiIIIiiiiI:Z

    .line 70
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/inca/security/Core/AppGuardEngine;->iIIiIIIIiI:Z

    .line 201
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/inca/security/Core/AppGuardEngine;->iiIIiiiiii:Z

    .line 63
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/inca/security/Core/AppGuardEngine;->iiIIiIIiii:Z

    .line 185
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/inca/security/Core/AppGuardEngine;->IiiIiIIiII:Z

    .line 1
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/inca/security/Core/AppGuardEngine;->iIIiIIIIIi:I

    .line 79
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/inca/security/Core/AppGuardEngine;->iIIIiiIIIi:I

    .line 127
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/inca/security/Core/AppGuardEngine;->IIIIiiIiII:I

    .line 11
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/inca/security/Core/AppGuardEngine;->iIIiIIiIiI:I

    .line 9
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/inca/security/Core/AppGuardEngine;->iIiiIiIiII:I

    .line 128
    new-instance v18, Lcom/inca/security/Core/WeakRefHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lcom/inca/security/Core/WeakRefHandler;-><init>(Landroid/os/Looper;Lcom/inca/security/w;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/inca/security/Core/AppGuardEngine;->IIiIiIIIii:Lcom/inca/security/Core/WeakRefHandler;

    .line 147
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/inca/security/Core/AppGuardEngine;->IIiIIIIIii:Ljava/lang/String;

    .line 21
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/inca/security/Core/AppGuardEngine;->IiiiIIiIII:Ljava/lang/String;

    .line 83
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/inca/security/Core/AppGuardEngine;->IiiIiiiIiI:[B

    .line 136
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/inca/security/Core/AppGuardEngine;->IIIiIiiiII:Lcom/inca/security/nc;

    .line 191
    new-instance v15, Ljava/lang/Object;

    invoke-direct {v15}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/inca/security/Core/AppGuardEngine;->iiIIiIiIii:Ljava/lang/Object;

    .line 17
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/inca/security/Core/AppGuardEngine;->iiiIiiIiIi:Z

    .line 35
    new-instance v14, Lcom/inca/security/ub;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/inca/security/Core/AppGuardEngine;->IIiIiIIIii:Lcom/inca/security/Core/WeakRefHandler;

    invoke-direct {v14, v15}, Lcom/inca/security/ub;-><init>(Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/inca/security/Core/AppGuardEngine;->iiiIiiiiII:Lcom/inca/security/ub;

    .line 89
    move-object/from16 v0, p0

    iput v13, v0, Lcom/inca/security/Core/AppGuardEngine;->IIIiIIIiiI:I

    .line 142
    move-object/from16 v0, p0

    iput v12, v0, Lcom/inca/security/Core/AppGuardEngine;->IiiiIIIiIi:I

    .line 91
    move-object/from16 v0, p0

    iput v11, v0, Lcom/inca/security/Core/AppGuardEngine;->iiIiIIIiiI:I

    .line 73
    move-object/from16 v0, p0

    iput v10, v0, Lcom/inca/security/Core/AppGuardEngine;->iiIIIIIiiI:I

    .line 52
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/inca/security/Core/AppGuardEngine;->iiiIiIIIII:Ljava/lang/String;

    .line 148
    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/inca/security/Core/AppGuardEngine;->IiiIiIIiiI:Z

    .line 187
    new-array v7, v7, [B

    const/4 v8, 0x0

    const/16 v9, -0x43

    aput-byte v9, v7, v8

    const/4 v8, 0x1

    const/16 v9, 0x69

    aput-byte v9, v7, v8

    const/4 v8, 0x2

    const/16 v9, -0x25

    aput-byte v9, v7, v8

    const/4 v8, 0x3

    const/16 v9, -0x19

    aput-byte v9, v7, v8

    const/4 v8, 0x4

    const/16 v9, 0x7b

    aput-byte v9, v7, v8

    const/4 v8, 0x5

    const/16 v9, 0x17

    aput-byte v9, v7, v8

    const/4 v8, 0x6

    const/16 v9, 0x4f

    aput-byte v9, v7, v8

    const/4 v8, 0x7

    const/16 v9, 0xb

    aput-byte v9, v7, v8

    const/16 v8, 0x8

    const/16 v9, -0x7b

    aput-byte v9, v7, v8

    const/16 v8, 0x9

    const/4 v9, -0x6

    aput-byte v9, v7, v8

    const/16 v8, 0xa

    const/16 v9, 0x11

    aput-byte v9, v7, v8

    const/16 v8, 0xb

    const/16 v9, -0x2c

    aput-byte v9, v7, v8

    const/16 v8, 0xc

    const/4 v9, -0x7

    aput-byte v9, v7, v8

    const/16 v8, 0xd

    const/16 v9, 0x6e

    aput-byte v9, v7, v8

    const/16 v8, 0xe

    const/4 v9, -0x8

    aput-byte v9, v7, v8

    const/16 v8, 0xf

    const/16 v9, -0xa

    aput-byte v9, v7, v8

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/inca/security/Core/AppGuardEngine;->IIiIIiIIiI:[B

    .line 171
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/inca/security/Core/AppGuardEngine;->iIiiiIIiIi:Ljava/util/Queue;

    .line 107
    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/inca/security/Core/AppGuardEngine;->iiIIiIIiII:Z

    .line 421
    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "\u0007.\u0017.\u0000?\u001c%\u000c?\u000b\"\r," #DETECT_NOTHING

    invoke-static {v7}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "KH[HLYPZJD]IP_@B[R__@NJ^\\" #DETECT_WIRED_ROOT_PROCESS

    invoke-static {v7}, Lcom/inca/security/n;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "/\u0006?\u0006(\u00174\n%\u0015*\u000f\"\u00074\u0002;\u00084\u0005\"\u000f." #DETECT_INVALID_APK_FILE

    invoke-static {v7}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-string v7, "KH[HLYPDA[NAFIPL_FP^FJA" #DETECT_INVALID_APK_SIGN

    invoke-static {v7}, Lcom/inca/security/n;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string v7, "\u0007.\u0017.\u0000?\u001c\"\r=\u0002\'\n/\u001c$\u0007.\u001b4\u0005\"\u000f." #DETECT_INVALID_ODEX_FILE

    invoke-static {v7}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x5

    const-string v7, "KH[HLYPDA[NAFIPBKHWRFCP@J@@_V" #DETECT_INVALID_ODEX_IN_MEMORY

    invoke-static {v7}, Lcom/inca/security/n;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x6

    const-string v7, "\u0007.\u0017.\u0000?\u001c\"\r=\u0002\'\n/\u001c\'\n)\u00004\u0010$" #DETECT_INVALID_LIBC_SO

    invoke-static {v7}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x7

    const-string v7, "IJYJN[RFCYLCDKRCDMIY@P^@" #DETECT_INVALID_LIBDVM_SO

    invoke-static {v7}, Lcom/inca/security/n;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0x8

    const-string v7, "\u0007.\u0017.\u0000?\u001c\"\r=\u0002\'\n/\u001c\'\n)\u0011>\r?\n&\u00064\u0010$" #DETECT_INVALID_LIBRUNTIME_SO

    invoke-static {v7}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0x9

    const-string v7, "IJYJN[RFCYLCDKRN]_AFOP^@" #DETECT_INVALID_APPLIB_SO

    invoke-static {v7}, Lcom/inca/security/n;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0xa

    const-string v7, "/\u0006?\u0006(\u00174\n%\u0015*\u000f\"\u00074\u000f\"\u0001.\r,\n%\u00064\u0010$" #DETECT_INVALID_LIBENGINE_SO

    invoke-static {v7}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0xb

    const-string v7, "IJYJN[RKHMXHJFCH" #DETECT_DEBUGGING

    invoke-static {v7}, Lcom/inca/security/n;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0xc

    const-string v7, "/\u0006?\u0006(\u00174\u000e.\u000e$\u00112\u001c?\u0002&\u0013.\u0011\"\r," #DETECT_MEMORY_TAMPERING

    invoke-static {v7}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0xd

    const-string v7, "IJYJN[RFCYLCDKRI_N@JZ@_DRIDCH\\" #DETECT_INVALID_FRAMEWORK_FILES

    invoke-static {v7}, Lcom/inca/security/n;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0xe

    const-string v7, "/\u0006?\u0006(\u00174\n%\u0015*\u000f\"\u00074\u000f\"\u0000.\r8\u00064\u00168\u00068" #DETECT_INVALID_LICENSE_USES

    invoke-static {v7}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0xf

    const-string v7, "IJYJN[RFCYLCDKRI_N@JZ@_DRFCP@J@@_V" #DETECT_INVALID_FRAMEWORK_IN_MEMORY

    invoke-static {v7}, Lcom/inca/security/n;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0x10

    const-string v7, "\u0007.\u0017.\u0000?\u001c\"\r=\u0002\'\n/\u001c8\u000e\"\u0017#" #DETECT_INVALID_SMITH

    invoke-static {v7}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0x11

    const-string v7, "KH[HLYPDA[NAFIPXAD[TPL\\^J@MAV" #DETECT_INVALID_UNITY_ASSEMBLY

    invoke-static {v7}, Lcom/inca/security/n;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0x12

    const-string v7, "\u0007.\u0017.\u0000?\u001c&\u0006&\u000c9\u001a4\u0010(\u0002%\r\"\r," #DETECT_MEMORY_SCANNING

    invoke-static {v7}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0x13

    const-string v7, "IJYJN[RL_FYFNNAPYG_JLKRAB[R]XACFCH" #DETECT_CRITICAL_THREAD_NOT_RUNNING

    invoke-static {v7}, Lcom/inca/security/n;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0x14

    const-string v7, "\u0007.\u0017.\u0000?\u001c\"\r=\u0002\'\n/\u001c8\u001a8\u0017.\u000e*\u0013;\u001c-\n\'\u00068" #DETECT_INVALID_SYSTEMAPP_FILES

    invoke-static {v7}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0x15

    const-string v7, "IJYJN[R]XACFCHRMLKRN]_AFNNYFBA" #DETECT_RUNNING_BAD_APPLICATION

    invoke-static {v7}, Lcom/inca/security/n;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0x16

    const-string v7, "/\u0006?\u0006(\u00174\r*\u0017\"\u0015.\u001c/\u0006)\u0016,\u0004\"\r," #DETECT_NATIVE_DEBUGGING

    invoke-static {v7}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0x17

    const-string v7, "KH[HLYP@J@@_VRKXB]FCH" #DETECT_MEMORY_DUMPING

    invoke-static {v7}, Lcom/inca/security/n;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0x18

    const-string v7, "/\u0006?\u0006(\u00174\u0010$\u001c\'\n)\u0011*\u00112\u001c\"\r!\u0006(\u0017\"\u000c%" #DETECT_SO_LIBRARY_INJECTION

    invoke-static {v7}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0x19

    const-string v7, "IJYJN[R]XACFCHRMLKR__@NJ^\\" #DETECT_RUNNING_BAD_PROCESS

    invoke-static {v7}, Lcom/inca/security/n;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0x1a

    const-string v7, "\u0007.\u0017.\u0000?\u001c<\u0006\"\u0011/\u001c \u00069\r.\u000f4\u000e$\u0007>\u000f." #DETECT_WEIRD_KERNEL_MODULE

    invoke-static {v7}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0x1b

    const-string v7, "KH[HLYP@NN]BP^Z^_DLD@X\\" #DETECT_MACRO_SUSPICIOUS

    invoke-static {v7}, Lcom/inca/security/n;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0x1c

    const-string v7, "/\u0006?\u0006(\u00174\u000e*\u00009\u000c4\u0010>\u0010;\n(\n$\u00168" #DETECT_MACRO_SUSPICIOUS

    invoke-static {v7}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0x1d

    const-string v7, "IJYJN[RN]FRGB@FFCH" #DETECT_API_HOOKING

    invoke-static {v7}, Lcom/inca/security/n;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0x1e

    const-string v7, "p[" #30

    invoke-static {v7}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0x1f

    const-string v7, ">>" #31

    invoke-static {v7}, Lcom/inca/security/n;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0x20

    const-string v7, "/\u0006?\u0006(\u00174\u0006&\u0016\'\u0002?\u000c9" #DETECT_EMULATOR

    invoke-static {v7}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0x21

    const-string v7, "IJYJN[RMLKRN]_AFNNYFBA" #DETECT_BAD_APPLICATION

    invoke-static {v7}, Lcom/inca/security/n;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0x22

    const-string v7, "\u0007.\u0017.\u0000?\u001c9\u000c$\u0017\"\r,\u001c.\r=\n9\u000c%\u000e.\r?" #DETECT_ROOTING_ENVIRONMENT

    invoke-static {v7}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0x23

    const-string v7, "IJYJN[R\\]JHKENND" #DETECT_SPEEDHACK

    invoke-static {v7}, Lcom/inca/security/n;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0x24

    const-string v7, "/\u0006?\u0006(\u00174\n%\u0015*\u000f\"\u00074\u0005/s4\u0013.\u0011&\n8\u0010\"\u000c%" #DETECT_INVALID_FD0_PERMISSION

    invoke-static {v7}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0x25

    const-string v7, "IJYJN[RLX\\Y@@]BB" #DETECT_CUSTOMROM

    invoke-static {v7}, Lcom/inca/security/n;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0x26

    const-string v7, "\u0007.\u0017.\u0000?\u001c>\u0010)\u0007.\u0001>\u0004,\n%\u00044\u0005\'\u0002," #DETECT_USBDEBUGGING_FLAG

    invoke-static {v7}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0x27

    const-string v7, "KH[HLYPDA[NAFIPA@NNAPEN^G" #DETECT_INVALID_LOCAL_HASH

    invoke-static {v7}, Lcom/inca/security/n;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0x28

    const-string v7, "\u0007.\u0017.\u0000?\u001c\"\r8\u0017*\u000f\'\u0002)\u000f.\u001c%\u000c%\u001c&\u00029\u0008.\u00174\u0002;\u00138" #DETECT_INSTALLABLE_NON_MARKET_APPS

    invoke-static {v7}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0x29

    const-string v7, "9>" #41

    invoke-static {v7}, Lcom/inca/security/n;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0x2a

    const-string v7, "wY" #42

    invoke-static {v7}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0x2b

    const-string v7, "9<" #43

    invoke-static {v7}, Lcom/inca/security/n;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0x2c

    const-string v7, "w_" #44

    invoke-static {v7}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0x2d

    const-string v7, "9:" #45

    invoke-static {v7}, Lcom/inca/security/n;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0x2e

    const-string v7, "w]" #46

    invoke-static {v7}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0x2f

    const-string v7, "98" #47

    invoke-static {v7}, Lcom/inca/security/n;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0x30

    const-string v7, "wS" #48

    invoke-static {v7}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0x31

    const-string v7, "96" #49

    invoke-static {v7}, Lcom/inca/security/n;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0x32

    const-string v7, "v[" #50

    invoke-static {v7}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0x33

    const-string v7, "8>" #51

    invoke-static {v7}, Lcom/inca/security/n;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0x34

    const-string v7, "vY" #52

    invoke-static {v7}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0x35

    const-string v7, "8<" #53

    invoke-static {v7}, Lcom/inca/security/n;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0x36

    const-string v7, "v_" #54

    invoke-static {v7}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0x37

    const-string v7, "8:" #55

    invoke-static {v7}, Lcom/inca/security/n;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0x38

    const-string v7, "v]" #56

    invoke-static {v7}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0x39

    const-string v7, "88" #57

    invoke-static {v7}, Lcom/inca/security/n;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0x3a

    const-string v7, "vS" #58

    invoke-static {v7}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0x3b

    const-string v7, "86" #59

    invoke-static {v7}, Lcom/inca/security/n;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0x3c

    const-string v7, "u[" #60

    invoke-static {v7}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0x3d

    const-string v7, ";>" #61

    invoke-static {v7}, Lcom/inca/security/n;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0x3e

    const-string v7, "uY" #62

    invoke-static {v7}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0x3f

    const-string v7, ";<" #63

    invoke-static {v7}, Lcom/inca/security/n;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/inca/security/Core/AppGuardEngine;->IiIiIiiIii:[Ljava/lang/String;

    .line 218
    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "%\u000c?\u000b\"\r," #NOTHING

    invoke-static {v7}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "@@IZAJR[T_HPN@@_L[DMAJ" #MODULE_TYPE_COMPATIBLE

    invoke-static {v7}, Lcom/inca/security/n;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "\u000e$\u0007>\u000f.\u001c?\u001a;\u00064\u0010?\u0016)" #MODULE_TYPE_STUB

    invoke-static {v7}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-string v7, "@@IZAJR[T_HPHAJFCJ" #MODULE_TYPE_ENGINE

    invoke-static {v7}, Lcom/inca/security/n;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/inca/security/Core/AppGuardEngine;->iIIIiIiiii:[Ljava/lang/String;

    .line 874
    invoke-static/range {p1 .. p1}, Lcom/inca/security/Proxy/JNISoxProxy;->setContext(Landroid/content/Context;)V

    .line 1122
    :try_start_0
    new-instance v5, Lcom/inca/security/AppGuard/SecureLibrary;

    invoke-static {}, Lcom/inca/security/Proxy/JNISoxProxy;->getContext()Landroid/content/Context;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v5, v6, v0}, Lcom/inca/security/AppGuard/SecureLibrary;-><init>(Landroid/content/Context;Lcom/inca/security/Interface/BaseEventInvoker;)V

    sput-object v5, Lcom/inca/security/Core/AppGuardEngine;->IIiIIIIiIi:Lcom/inca/security/AppGuard/SecureLibrary;

    .line 679
    sget-object v5, Lcom/inca/security/Core/AppGuardEngine;->IIiIIIIiIi:Lcom/inca/security/AppGuard/SecureLibrary;

    const-string v6, "$!\u0001&\u00087-\"\u00087\u00041\u0012" #ObjectFactory

    invoke-static {v6}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/inca/security/AppGuard/SecureLibrary;->newInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/inca/security/Interface/ObjectFactory;

    sput-object v5, Lcom/inca/security/Core/AppGuardEngine;->IIIiIIiIIi:Lcom/inca/security/Interface/ObjectFactory;

    .line 611
    invoke-static {}, Lcom/inca/security/AppGuard/SecureObjectFactory;->newInstanceOfObjectIntegrityManager()Lcom/inca/security/Interface/ObjectIntegrityManager;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/inca/security/Core/AppGuardEngine;->IIiiIIIiIi:Lcom/inca/security/Interface/ObjectIntegrityManager;
    :try_end_0
    .catch Lcom/inca/security/Exception/AppGuardException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v4, p0

    .line 897
    .end local p0    # "this":Lcom/inca/security/Core/AppGuardEngine;
    .local v4, "this":Lcom/inca/security/Core/AppGuardEngine;
    :goto_0
    move-object/from16 v0, p0

    iput-object v0, v4, Lcom/inca/security/Core/AppGuardEngine;->IIiiiiiIIi:Lcom/inca/security/Core/AppGuardEngine;

    .line 1272
    const/4 v5, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/inca/security/Core/AppGuardEngine;->iiiIIIiiII:Lcom/inca/security/AppGuard/AppGuardEventListener;

    .line 607
    move-object/from16 v0, p0

    iput v5, v0, Lcom/inca/security/Core/AppGuardEngine;->iiIiIIIiii:I

    .line 662
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/inca/security/Core/AppGuardEngine;->iiIIIiiiiI:Z

    .line 891
    invoke-static {}, Lcom/inca/security/Proxy/JNISoxProxy;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "n``!dann#wJn`j" #com.inca.xGame

    invoke-static {v6}, Lcom/inca/security/n;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    const/4 v5, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/inca/security/Core/AppGuardEngine;->iiIIiIIiii:Z

    const/4 v5, 0x0

    .line 554
    const/16 v6, 0x40

    const/16 v7, 0x40

    new-array v7, v7, [Z

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/inca/security/Core/AppGuardEngine;->IiIIIIIiII:[Z

    .line 1455
    new-array v6, v6, [Z

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/inca/security/Core/AppGuardEngine;->IIiiiIIIIi:[Z

    move v6, v5

    .line 650
    :goto_2
    const/16 v7, 0x40

    if-ge v5, v7, :cond_1

    .line 596
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/inca/security/Core/AppGuardEngine;->IiIIIIIiII:[Z

    const/4 v7, 0x0

    aput-boolean v7, v5, v6

    .line 609
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/inca/security/Core/AppGuardEngine;->IIiiiIIIIi:[Z

    const/4 v8, 0x0

    add-int/lit8 v5, v6, 0x1

    aput-boolean v8, v7, v6

    move v6, v5

    .line 650
    goto :goto_2

    .line 1347
    .end local v4    # "this":Lcom/inca/security/Core/AppGuardEngine;
    .restart local p0    # "this":Lcom/inca/security/Core/AppGuardEngine;
    :catch_0
    move-exception v5

    move-object/from16 v4, p0

    .line 897
    .end local p0    # "this":Lcom/inca/security/Core/AppGuardEngine;
    .restart local v4    # "this":Lcom/inca/security/Core/AppGuardEngine;
    goto :goto_0

    .line 891
    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    .line 1337
    :cond_1
    invoke-static {}, Lcom/inca/security/Proxy/JNISoxProxy;->getDeviceInfo()Lcom/inca/security/c;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/inca/security/Core/AppGuardEngine;->IiiiiIIIIi:Lcom/inca/security/c;

    .line 913
    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/inca/security/Core/AppGuardEngine;->iIIIIIiIII:Ljava/lang/Object;

    .line 1403
    const/16 v5, 0x126

    new-array v7, v5, [B

    const/4 v5, 0x0

    const/16 v6, 0x30

    aput-byte v6, v7, v5

    const/4 v5, 0x1

    const/16 v6, -0x7e

    aput-byte v6, v7, v5

    const/4 v5, 0x2

    const/4 v6, 0x1

    aput-byte v6, v7, v5

    const/4 v5, 0x3

    const/16 v6, 0x22

    aput-byte v6, v7, v5

    const/4 v5, 0x4

    const/16 v6, 0x30

    aput-byte v6, v7, v5

    const/4 v5, 0x5

    const/16 v6, 0xd

    aput-byte v6, v7, v5

    const/4 v5, 0x6

    aput-byte v5, v7, v5

    const/4 v5, 0x7

    const/16 v6, 0x9

    aput-byte v6, v7, v5

    const/16 v5, 0x8

    const/16 v6, 0x2a

    aput-byte v6, v7, v5

    const/16 v5, 0x9

    const/16 v6, -0x7a

    aput-byte v6, v7, v5

    const/16 v5, 0xa

    const/16 v6, 0x48

    aput-byte v6, v7, v5

    const/16 v5, 0xb

    const/16 v6, -0x7a

    aput-byte v6, v7, v5

    const/16 v5, 0xc

    const/16 v6, -0x9

    aput-byte v6, v7, v5

    const/16 v5, 0xd

    aput-byte v5, v7, v5

    const/16 v5, 0xe

    const/4 v6, 0x1

    aput-byte v6, v7, v5

    const/16 v5, 0xf

    const/4 v6, 0x1

    aput-byte v6, v7, v5

    const/16 v5, 0x10

    const/4 v6, 0x1

    aput-byte v6, v7, v5

    const/16 v5, 0x11

    const/4 v6, 0x5

    aput-byte v6, v7, v5

    const/16 v5, 0x12

    const/4 v6, 0x0

    aput-byte v6, v7, v5

    const/16 v5, 0x13

    const/4 v6, 0x3

    aput-byte v6, v7, v5

    const/16 v5, 0x14

    const/16 v6, -0x7e

    aput-byte v6, v7, v5

    const/16 v5, 0x15

    const/4 v6, 0x1

    aput-byte v6, v7, v5

    const/16 v5, 0x16

    const/16 v6, 0xf

    aput-byte v6, v7, v5

    const/16 v5, 0x17

    const/4 v6, 0x0

    aput-byte v6, v7, v5

    const/16 v5, 0x18

    const/16 v6, 0x30

    aput-byte v6, v7, v5

    const/16 v5, 0x19

    const/16 v6, -0x7e

    aput-byte v6, v7, v5

    const/16 v5, 0x1a

    const/4 v6, 0x1

    aput-byte v6, v7, v5

    const/16 v5, 0x1b

    const/16 v6, 0xa

    aput-byte v6, v7, v5

    const/16 v5, 0x1c

    const/4 v6, 0x2

    aput-byte v6, v7, v5

    const/16 v5, 0x1d

    const/16 v6, -0x7e

    aput-byte v6, v7, v5

    const/16 v5, 0x1e

    const/4 v6, 0x1

    aput-byte v6, v7, v5

    const/16 v5, 0x1f

    const/4 v6, 0x1

    aput-byte v6, v7, v5

    const/16 v5, 0x20

    const/4 v6, 0x0

    aput-byte v6, v7, v5

    const/16 v5, 0x21

    const/16 v6, -0x31

    aput-byte v6, v7, v5

    const/16 v5, 0x22

    const/16 v6, -0x59

    aput-byte v6, v7, v5

    const/16 v5, 0x23

    const/4 v6, 0x7

    aput-byte v6, v7, v5

    const/16 v5, 0x24

    const/4 v6, -0x7

    aput-byte v6, v7, v5

    const/16 v5, 0x25

    const/16 v6, 0x12

    aput-byte v6, v7, v5

    const/16 v5, 0x26

    const/16 v6, 0x6a

    aput-byte v6, v7, v5

    const/16 v5, 0x27

    const/16 v6, 0x6c

    aput-byte v6, v7, v5

    const/16 v5, 0x28

    const/16 v6, 0x3c

    aput-byte v6, v7, v5

    const/16 v5, 0x29

    const/16 v6, 0x65

    aput-byte v6, v7, v5

    const/16 v5, 0x2a

    const/16 v6, -0x28

    aput-byte v6, v7, v5

    const/16 v5, 0x2b

    const/16 v6, 0x52

    aput-byte v6, v7, v5

    const/16 v5, 0x2c

    const/16 v6, -0x47

    aput-byte v6, v7, v5

    const/16 v5, 0x2d

    const/16 v6, -0x29

    aput-byte v6, v7, v5

    const/16 v5, 0x2e

    const/16 v6, 0x49

    aput-byte v6, v7, v5

    const/16 v5, 0x2f

    const/16 v6, -0x7e

    aput-byte v6, v7, v5

    const/16 v5, 0x30

    const/16 v6, 0x41

    aput-byte v6, v7, v5

    const/16 v5, 0x31

    const/16 v6, 0x18

    aput-byte v6, v7, v5

    const/16 v5, 0x32

    const/16 v6, 0x11

    aput-byte v6, v7, v5

    const/16 v5, 0x33

    const/16 v6, -0x9

    aput-byte v6, v7, v5

    const/16 v5, 0x34

    const/16 v6, 0x76

    aput-byte v6, v7, v5

    const/16 v5, 0x35

    const/16 v6, 0x58

    aput-byte v6, v7, v5

    const/16 v5, 0x36

    const/16 v6, -0x34

    aput-byte v6, v7, v5

    const/16 v5, 0x37

    const/16 v6, 0x12

    aput-byte v6, v7, v5

    const/16 v5, 0x38

    const/16 v6, 0x61

    aput-byte v6, v7, v5

    const/16 v5, 0x39

    const/16 v6, -0x6f

    aput-byte v6, v7, v5

    const/16 v5, 0x3a

    const/16 v6, -0x2f

    aput-byte v6, v7, v5

    const/16 v5, 0x3b

    const/16 v6, -0x5f

    aput-byte v6, v7, v5

    const/16 v5, 0x3c

    const/16 v6, 0x13

    aput-byte v6, v7, v5

    const/16 v5, 0x3d

    const/16 v6, 0x77

    aput-byte v6, v7, v5

    const/16 v5, 0x3e

    const/16 v6, 0x15

    aput-byte v6, v7, v5

    const/16 v5, 0x3f

    const/16 v6, 0x61

    aput-byte v6, v7, v5

    const/16 v5, 0x40

    const/16 v6, 0x72

    aput-byte v6, v7, v5

    const/16 v5, 0x41

    const/16 v6, -0x35

    aput-byte v6, v7, v5

    const/16 v5, 0x42

    const/16 v6, -0x47

    aput-byte v6, v7, v5

    const/16 v5, 0x43

    const/16 v6, 0x22

    aput-byte v6, v7, v5

    const/16 v5, 0x44

    const/16 v6, -0x53

    aput-byte v6, v7, v5

    const/16 v5, 0x45

    const/16 v6, 0x5a

    aput-byte v6, v7, v5

    const/16 v5, 0x46

    const/16 v6, -0x59

    aput-byte v6, v7, v5

    const/16 v5, 0x47

    const/16 v6, -0x39

    aput-byte v6, v7, v5

    const/16 v5, 0x48

    const/16 v6, -0x1c

    aput-byte v6, v7, v5

    const/16 v5, 0x49

    const/16 v6, 0x14

    aput-byte v6, v7, v5

    const/16 v5, 0x4a

    const/16 v6, -0x53

    aput-byte v6, v7, v5

    const/16 v5, 0x4b

    const/16 v6, -0x11

    aput-byte v6, v7, v5

    const/16 v5, 0x4c

    const/16 v6, -0xd

    aput-byte v6, v7, v5

    const/16 v5, 0x4d

    const/16 v6, 0x43

    aput-byte v6, v7, v5

    const/16 v5, 0x4e

    const/16 v6, 0x26

    aput-byte v6, v7, v5

    const/16 v5, 0x4f

    const/16 v6, -0x56

    aput-byte v6, v7, v5

    const/16 v5, 0x50

    const/4 v6, -0x8

    aput-byte v6, v7, v5

    const/16 v5, 0x51

    const/16 v6, 0x75

    aput-byte v6, v7, v5

    const/16 v5, 0x52

    const/16 v6, -0x7b

    aput-byte v6, v7, v5

    const/16 v5, 0x53

    const/16 v6, -0x2c

    aput-byte v6, v7, v5

    const/16 v5, 0x54

    const/16 v6, 0x60

    aput-byte v6, v7, v5

    const/16 v5, 0x55

    const/16 v6, -0x4c

    aput-byte v6, v7, v5

    const/16 v5, 0x56

    const/16 v6, -0x50

    aput-byte v6, v7, v5

    const/16 v5, 0x57

    const/16 v6, -0x1e

    aput-byte v6, v7, v5

    const/16 v5, 0x58

    const/16 v6, -0x2e

    aput-byte v6, v7, v5

    const/16 v5, 0x59

    const/16 v6, -0x5c

    aput-byte v6, v7, v5

    const/16 v5, 0x5a

    const/16 v6, 0x44

    aput-byte v6, v7, v5

    const/16 v5, 0x5b

    const/16 v6, 0x1a

    aput-byte v6, v7, v5

    const/16 v5, 0x5c

    const/16 v6, -0x29

    aput-byte v6, v7, v5

    const/16 v5, 0x5d

    const/16 v6, -0x1e

    aput-byte v6, v7, v5

    const/16 v5, 0x5e

    const/16 v6, -0x26

    aput-byte v6, v7, v5

    const/16 v5, 0x5f

    const/4 v6, 0x6

    aput-byte v6, v7, v5

    const/16 v5, 0x60

    const/16 v6, 0x78

    aput-byte v6, v7, v5

    const/16 v5, 0x61

    const/16 v6, -0x1a

    aput-byte v6, v7, v5

    const/16 v5, 0x62

    const/16 v6, -0x3d

    aput-byte v6, v7, v5

    const/16 v5, 0x63

    const/16 v6, 0x48

    aput-byte v6, v7, v5

    const/16 v5, 0x64

    const/16 v6, 0x8

    aput-byte v6, v7, v5

    const/16 v5, 0x65

    const/16 v6, 0x48

    aput-byte v6, v7, v5

    const/16 v5, 0x66

    const/16 v6, -0x43

    aput-byte v6, v7, v5

    const/16 v5, 0x67

    const/16 v6, -0x31

    aput-byte v6, v7, v5

    const/16 v5, 0x68

    const/16 v6, 0x4f

    aput-byte v6, v7, v5

    const/16 v5, 0x69

    const/16 v6, 0x30

    aput-byte v6, v7, v5

    const/16 v5, 0x6a

    const/16 v6, 0x50

    aput-byte v6, v7, v5

    const/16 v5, 0x6b

    const/16 v6, 0x5f

    aput-byte v6, v7, v5

    const/16 v5, 0x6c

    const/16 v6, -0x35

    aput-byte v6, v7, v5

    const/16 v5, 0x6d

    const/16 v6, -0x42

    aput-byte v6, v7, v5

    const/16 v5, 0x6e

    const/16 v6, -0x54

    aput-byte v6, v7, v5

    const/16 v5, 0x6f

    const/16 v6, -0x49

    aput-byte v6, v7, v5

    const/16 v5, 0x70

    const/16 v6, 0x27

    aput-byte v6, v7, v5

    const/16 v5, 0x71

    const/16 v6, -0x61

    aput-byte v6, v7, v5

    const/16 v5, 0x72

    const/16 v6, -0x40

    aput-byte v6, v7, v5

    const/16 v5, 0x73

    const/16 v6, 0x51

    aput-byte v6, v7, v5

    const/16 v5, 0x74

    const/16 v6, 0x47

    aput-byte v6, v7, v5

    const/16 v5, 0x75

    const/16 v6, -0x64

    aput-byte v6, v7, v5

    const/16 v5, 0x76

    const/16 v6, 0x10

    aput-byte v6, v7, v5

    const/16 v5, 0x77

    const/16 v6, 0x30

    aput-byte v6, v7, v5

    const/16 v5, 0x78

    const/16 v6, -0x6b

    aput-byte v6, v7, v5

    const/16 v5, 0x79

    const/16 v6, 0x12

    aput-byte v6, v7, v5

    const/16 v5, 0x7a

    const/16 v6, 0x10

    aput-byte v6, v7, v5

    const/16 v5, 0x7b

    const/16 v6, -0x54

    aput-byte v6, v7, v5

    const/16 v5, 0x7c

    const/16 v6, 0x35

    aput-byte v6, v7, v5

    const/16 v5, 0x7d

    const/16 v6, 0x77

    aput-byte v6, v7, v5

    const/16 v5, 0x7e

    const/16 v6, 0x76

    aput-byte v6, v7, v5

    const/16 v5, 0x7f

    const/16 v6, 0xf

    aput-byte v6, v7, v5

    const/16 v5, 0x80

    const/16 v6, 0x3c

    aput-byte v6, v7, v5

    const/16 v5, 0x81

    const/16 v6, -0x57

    aput-byte v6, v7, v5

    const/16 v5, 0x82

    const/16 v6, -0xb

    aput-byte v6, v7, v5

    const/16 v5, 0x83

    const/16 v6, -0x2e

    aput-byte v6, v7, v5

    const/16 v5, 0x84

    const/16 v6, 0x39

    aput-byte v6, v7, v5

    const/16 v5, 0x85

    const/4 v6, 0x7

    aput-byte v6, v7, v5

    const/16 v5, 0x86

    const/16 v6, 0x5d

    aput-byte v6, v7, v5

    const/16 v5, 0x87

    const/16 v6, 0x7d

    aput-byte v6, v7, v5

    const/16 v5, 0x88

    const/16 v6, 0x20

    aput-byte v6, v7, v5

    const/16 v5, 0x89

    const/16 v6, -0x34

    aput-byte v6, v7, v5

    const/16 v5, 0x8a

    const/16 v6, 0x5e

    aput-byte v6, v7, v5

    const/16 v5, 0x8b

    const/4 v6, -0x4

    aput-byte v6, v7, v5

    const/16 v5, 0x8c

    const/16 v6, 0x62

    aput-byte v6, v7, v5

    const/16 v5, 0x8d

    const/4 v6, 0x4

    aput-byte v6, v7, v5

    const/16 v5, 0x8e

    const/16 v6, 0x2f

    aput-byte v6, v7, v5

    const/16 v5, 0x8f

    const/16 v6, 0x3c

    aput-byte v6, v7, v5

    const/16 v5, 0x90

    const/16 v6, 0x26

    aput-byte v6, v7, v5

    const/16 v5, 0x91

    const/16 v6, -0x72

    aput-byte v6, v7, v5

    const/16 v5, 0x92

    const/16 v6, 0x31

    aput-byte v6, v7, v5

    const/16 v5, 0x93

    const/16 v6, 0x56

    aput-byte v6, v7, v5

    const/16 v5, 0x94

    const/16 v6, -0x56

    aput-byte v6, v7, v5

    const/16 v5, 0x95

    const/16 v6, 0x1e

    aput-byte v6, v7, v5

    const/16 v5, 0x96

    const/16 v6, -0x76

    aput-byte v6, v7, v5

    const/16 v5, 0x97

    const/16 v6, -0x66

    aput-byte v6, v7, v5

    const/16 v5, 0x98

    const/16 v6, -0x3a

    aput-byte v6, v7, v5

    const/16 v5, 0x99

    const/4 v6, -0x2

    aput-byte v6, v7, v5

    const/16 v5, 0x9a

    const/16 v6, -0x28

    aput-byte v6, v7, v5

    const/16 v5, 0x9b

    const/16 v6, 0x61

    aput-byte v6, v7, v5

    const/16 v5, 0x9c

    const/16 v6, 0x4d

    aput-byte v6, v7, v5

    const/16 v5, 0x9d

    const/16 v6, -0x2f

    aput-byte v6, v7, v5

    const/16 v5, 0x9e

    const/16 v6, 0x6c

    aput-byte v6, v7, v5

    const/16 v5, 0x9f

    const/16 v6, -0x67

    aput-byte v6, v7, v5

    const/16 v5, 0xa0

    const/16 v6, 0xb

    aput-byte v6, v7, v5

    const/16 v5, 0xa1

    const/16 v6, -0x6e

    aput-byte v6, v7, v5

    const/16 v5, 0xa2

    const/16 v6, 0x22

    aput-byte v6, v7, v5

    const/16 v5, 0xa3

    const/16 v6, -0x1a

    aput-byte v6, v7, v5

    const/16 v5, 0xa4

    const/16 v6, -0x15

    aput-byte v6, v7, v5

    const/16 v5, 0xa5

    const/16 v6, 0x3d

    aput-byte v6, v7, v5

    const/16 v5, 0xa6

    const/4 v6, 0x6

    aput-byte v6, v7, v5

    const/16 v5, 0xa7

    const/16 v6, 0x69

    aput-byte v6, v7, v5

    const/16 v5, 0xa8

    const/16 v6, -0x4f

    aput-byte v6, v7, v5

    const/16 v5, 0xa9

    const/16 v6, -0x47

    aput-byte v6, v7, v5

    const/16 v5, 0xaa

    const/16 v6, 0x66

    aput-byte v6, v7, v5

    const/16 v5, 0xab

    const/16 v6, -0xf

    aput-byte v6, v7, v5

    const/16 v5, 0xac

    const/16 v6, 0x1a

    aput-byte v6, v7, v5

    const/16 v5, 0xad

    const/4 v6, -0x4

    aput-byte v6, v7, v5

    const/16 v5, 0xae

    const/16 v6, 0x6d

    aput-byte v6, v7, v5

    const/16 v5, 0xaf

    const/16 v6, -0x26

    aput-byte v6, v7, v5

    const/16 v5, 0xb0

    const/16 v6, 0x5e

    aput-byte v6, v7, v5

    const/16 v5, 0xb1

    const/16 v6, -0xe

    aput-byte v6, v7, v5

    const/16 v5, 0xb2

    const/16 v6, -0x4c

    aput-byte v6, v7, v5

    const/16 v5, 0xb3

    const/4 v6, 0x0

    aput-byte v6, v7, v5

    const/16 v5, 0xb4

    const/16 v6, 0x58

    aput-byte v6, v7, v5

    const/16 v5, 0xb5

    const/16 v6, -0x4f

    aput-byte v6, v7, v5

    const/16 v5, 0xb6

    const/16 v6, 0x21

    aput-byte v6, v7, v5

    const/16 v5, 0xb7

    const/16 v6, -0x2b

    aput-byte v6, v7, v5

    const/16 v5, 0xb8

    const/16 v6, -0x73

    aput-byte v6, v7, v5

    const/16 v5, 0xb9

    const/16 v6, 0x65

    aput-byte v6, v7, v5

    const/16 v5, 0xba

    const/16 v6, 0x7b

    aput-byte v6, v7, v5

    const/16 v5, 0xbb

    const/16 v6, -0x11

    aput-byte v6, v7, v5

    const/16 v5, 0xbc

    const/16 v6, -0xf

    aput-byte v6, v7, v5

    const/16 v5, 0xbd

    const/16 v6, -0xf

    aput-byte v6, v7, v5

    const/16 v5, 0xbe

    const/16 v6, -0xe

    aput-byte v6, v7, v5

    const/16 v5, 0xbf

    const/16 v6, 0x30

    aput-byte v6, v7, v5

    const/16 v5, 0xc0

    const/16 v6, -0x55

    aput-byte v6, v7, v5

    const/16 v5, 0xc1

    const/4 v6, 0x2

    aput-byte v6, v7, v5

    const/16 v5, 0xc2

    const/16 v6, 0x2a

    aput-byte v6, v7, v5

    const/16 v5, 0xc3

    const/16 v6, 0x16

    aput-byte v6, v7, v5

    const/16 v5, 0xc4

    const/16 v6, 0x60

    aput-byte v6, v7, v5

    const/16 v5, 0xc5

    const/16 v6, 0x52

    aput-byte v6, v7, v5

    const/16 v5, 0xc6

    const/16 v6, 0x2f

    aput-byte v6, v7, v5

    const/16 v5, 0xc7

    const/16 v6, 0x32

    aput-byte v6, v7, v5

    const/16 v5, 0xc8

    const/16 v6, 0x71

    aput-byte v6, v7, v5

    const/16 v5, 0xc9

    const/4 v6, 0x0

    aput-byte v6, v7, v5

    const/16 v5, 0xca

    const/16 v6, 0x7e

    aput-byte v6, v7, v5

    const/16 v5, 0xcb

    const/16 v6, -0x3c

    aput-byte v6, v7, v5

    const/16 v5, 0xcc

    const/4 v6, 0x4

    aput-byte v6, v7, v5

    const/16 v5, 0xcd

    const/16 v6, -0x6d

    aput-byte v6, v7, v5

    const/16 v5, 0xce

    const/16 v6, -0x17

    aput-byte v6, v7, v5

    const/16 v5, 0xcf

    const/16 v6, 0x69

    aput-byte v6, v7, v5

    const/16 v5, 0xd0

    const/16 v6, 0x16

    aput-byte v6, v7, v5

    const/16 v5, 0xd1

    const/16 v6, 0x59

    aput-byte v6, v7, v5

    const/16 v5, 0xd2

    const/16 v6, -0x13

    aput-byte v6, v7, v5

    const/16 v5, 0xd3

    const/16 v6, -0x26

    aput-byte v6, v7, v5

    const/16 v5, 0xd4

    const/16 v6, 0x2c

    aput-byte v6, v7, v5

    const/16 v5, 0xd5

    const/4 v6, 0x3

    aput-byte v6, v7, v5

    const/16 v5, 0xd6

    const/16 v6, 0x27

    aput-byte v6, v7, v5

    const/16 v5, 0xd7

    const/16 v6, 0x7d

    aput-byte v6, v7, v5

    const/16 v5, 0xd8

    const/16 v6, 0x5e

    aput-byte v6, v7, v5

    const/16 v5, 0xd9

    const/16 v6, -0x23

    aput-byte v6, v7, v5

    const/16 v5, 0xda

    const/16 v6, 0x4b

    aput-byte v6, v7, v5

    const/16 v5, 0xdb

    const/16 v6, -0x75

    aput-byte v6, v7, v5

    const/16 v5, 0xdc

    const/16 v6, -0x26

    aput-byte v6, v7, v5

    const/16 v5, 0xdd

    const/16 v6, 0x2d

    aput-byte v6, v7, v5

    const/16 v5, 0xde

    const/16 v6, -0x61

    aput-byte v6, v7, v5

    const/16 v5, 0xdf

    const/16 v6, 0x18

    aput-byte v6, v7, v5

    const/16 v5, 0xe0

    const/16 v6, -0x43

    aput-byte v6, v7, v5

    const/16 v5, 0xe1

    const/16 v6, -0x7d

    aput-byte v6, v7, v5

    const/16 v5, 0xe2

    const/16 v6, 0x3d

    aput-byte v6, v7, v5

    const/16 v5, 0xe3

    const/16 v6, -0x4f

    aput-byte v6, v7, v5

    const/16 v5, 0xe4

    const/4 v6, 0x1

    aput-byte v6, v7, v5

    const/16 v5, 0xe5

    const/16 v6, -0x52

    aput-byte v6, v7, v5

    const/16 v5, 0xe6

    const/16 v6, 0x47

    aput-byte v6, v7, v5

    const/16 v5, 0xe7

    const/16 v6, -0x54

    aput-byte v6, v7, v5

    const/16 v5, 0xe8

    const/16 v6, 0x55

    aput-byte v6, v7, v5

    const/16 v5, 0xe9

    const/16 v6, -0x77

    aput-byte v6, v7, v5

    const/16 v5, 0xea

    const/16 v6, 0x7e

    aput-byte v6, v7, v5

    const/16 v5, 0xeb

    const/16 v6, -0x3f

    aput-byte v6, v7, v5

    const/16 v5, 0xec

    const/16 v6, 0x19

    aput-byte v6, v7, v5

    const/16 v5, 0xed

    const/16 v6, -0x59

    aput-byte v6, v7, v5

    const/16 v5, 0xee

    const/16 v6, -0x5b

    aput-byte v6, v7, v5

    const/16 v5, 0xef

    const/16 v6, 0x3b

    aput-byte v6, v7, v5

    const/16 v5, 0xf0

    const/16 v6, -0x5e

    aput-byte v6, v7, v5

    const/16 v5, 0xf1

    const/16 v6, 0x4f

    aput-byte v6, v7, v5

    const/16 v5, 0xf2

    const/16 v6, -0x77

    aput-byte v6, v7, v5

    const/16 v5, 0xf3

    const/4 v6, -0x8

    aput-byte v6, v7, v5

    const/16 v5, 0xf4

    const/4 v6, -0x1

    aput-byte v6, v7, v5

    const/16 v5, 0xf5

    const/16 v6, 0x4a

    aput-byte v6, v7, v5

    const/16 v5, 0xf6

    const/16 v6, -0x7b

    aput-byte v6, v7, v5

    const/16 v5, 0xf7

    const/16 v6, 0x6e

    aput-byte v6, v7, v5

    const/16 v5, 0xf8

    const/16 v6, -0x43

    aput-byte v6, v7, v5

    const/16 v5, 0xf9

    const/16 v6, 0x23

    aput-byte v6, v7, v5

    const/16 v5, 0xfa

    const/16 v6, 0x37

    aput-byte v6, v7, v5

    const/16 v5, 0xfb

    const/16 v6, 0x7d

    aput-byte v6, v7, v5

    const/16 v5, 0xfc

    const/16 v6, -0x3b

    aput-byte v6, v7, v5

    const/16 v5, 0xfd

    const/16 v6, 0x3d

    aput-byte v6, v7, v5

    const/16 v5, 0xfe

    const/16 v6, 0x6e

    aput-byte v6, v7, v5

    const/16 v5, 0xff

    const/16 v6, 0x77

    aput-byte v6, v7, v5

    const/16 v5, 0x100

    const/16 v6, 0x13

    aput-byte v6, v7, v5

    const/16 v5, 0x101

    const/16 v6, 0x12

    aput-byte v6, v7, v5

    const/16 v5, 0x102

    const/16 v6, -0x5e

    aput-byte v6, v7, v5

    const/16 v5, 0x103

    const/16 v6, -0x7f

    aput-byte v6, v7, v5

    const/16 v5, 0x104

    const/16 v6, -0x63

    aput-byte v6, v7, v5

    const/16 v5, 0x105

    const/16 v6, 0x32

    aput-byte v6, v7, v5

    const/16 v5, 0x106

    const/16 v6, 0x30

    aput-byte v6, v7, v5

    const/16 v5, 0x107

    const/16 v6, -0x9

    aput-byte v6, v7, v5

    const/16 v5, 0x108

    const/16 v6, -0x57

    aput-byte v6, v7, v5

    const/16 v5, 0x109

    const/16 v6, -0x64

    aput-byte v6, v7, v5

    const/16 v5, 0x10a

    const/16 v6, -0x14

    aput-byte v6, v7, v5

    const/16 v5, 0x10b

    const/16 v6, 0x63

    aput-byte v6, v7, v5

    const/16 v5, 0x10c

    const/16 v6, -0x6f

    aput-byte v6, v7, v5

    const/16 v5, 0x10d

    const/16 v6, -0x19

    aput-byte v6, v7, v5

    const/16 v5, 0x10e

    const/16 v6, -0x28

    aput-byte v6, v7, v5

    const/16 v5, 0x10f

    const/16 v6, 0x72

    aput-byte v6, v7, v5

    const/16 v5, 0x110

    const/16 v6, -0x6b

    aput-byte v6, v7, v5

    const/16 v5, 0x111

    const/16 v6, -0x6d

    aput-byte v6, v7, v5

    const/16 v5, 0x112

    const/16 v6, -0x5e

    aput-byte v6, v7, v5

    const/16 v5, 0x113

    const/16 v6, -0x67

    aput-byte v6, v7, v5

    const/16 v5, 0x114

    const/16 v6, -0x7f

    aput-byte v6, v7, v5

    const/16 v5, 0x115

    const/16 v6, 0x52

    aput-byte v6, v7, v5

    const/16 v5, 0x116

    const/16 v6, 0x3e

    aput-byte v6, v7, v5

    const/16 v5, 0x117

    const/16 v6, -0x72

    aput-byte v6, v7, v5

    const/16 v5, 0x118

    const/16 v6, 0x5e

    aput-byte v6, v7, v5

    const/16 v5, 0x119

    const/16 v6, 0x5f

    aput-byte v6, v7, v5

    const/16 v5, 0x11a

    const/16 v6, 0x23

    aput-byte v6, v7, v5

    const/16 v5, 0x11b

    const/16 v6, -0x1b

    aput-byte v6, v7, v5

    const/16 v5, 0x11c

    const/16 v6, -0x76

    aput-byte v6, v7, v5

    const/16 v5, 0x11d

    const/16 v6, -0x60

    aput-byte v6, v7, v5

    const/16 v5, 0x11e

    const/16 v6, 0x2a

    aput-byte v6, v7, v5

    const/16 v5, 0x11f

    const/16 v6, 0xa

    aput-byte v6, v7, v5

    const/16 v5, 0x120

    const/16 v6, -0x4f

    aput-byte v6, v7, v5

    const/16 v5, 0x121

    const/4 v6, 0x2

    aput-byte v6, v7, v5

    const/16 v5, 0x122

    const/4 v6, 0x3

    aput-byte v6, v7, v5

    const/16 v5, 0x123

    const/4 v6, 0x1

    aput-byte v6, v7, v5

    const/16 v5, 0x124

    const/4 v6, 0x0

    aput-byte v6, v7, v5

    const/16 v5, 0x125

    const/4 v6, 0x1

    aput-byte v6, v7, v5

    .line 555
    :try_start_1
    invoke-static {}, Lcom/inca/security/DexProtect/Binder;->getABI()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    move-result v5

    if-nez v5, :cond_4

    .line 759
    :try_start_2
    const-string v5, " \u0004.\u001b\"\u001f*\t/\u000e" #compatible

    invoke-static {v5}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7

    .line 1509
    :goto_3
    :try_start_3
    invoke-static {}, Lcom/inca/security/Proxy/JNISoxProxy;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    if-nez v5, :cond_3

    .line 737
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/inca/security/Core/AppGuardEngine;->IiiiiIIIIi:Lcom/inca/security/c;

    invoke-virtual {v5}, Lcom/inca/security/c;->iIiIIiIIIi()Z

    move-result v5

    if-nez v5, :cond_3

    .line 1147
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/inca/security/Core/AppGuardEngine;->IIiiiiiIIi:Lcom/inca/security/Core/AppGuardEngine;

    const/4 v6, 0x1

    const/16 v8, 0xa

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v8, v9}, Lcom/inca/security/Core/AppGuardEngine;->conditionCallback(II[B)V

    .line 1048
    :cond_2
    :goto_4
    return-void

    .line 587
    :cond_3
    invoke-static {}, Lcom/inca/security/Proxy/JNISoxProxy;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/inca/security/Core/AppGuardEngine;->IiIiiIiIiI(Landroid/content/Context;)V

    .line 1378
    invoke-direct/range {p0 .. p0}, Lcom/inca/security/Core/AppGuardEngine;->IiiiIIiIii()I

    move-result v5

    invoke-static {v5}, Lcom/inca/security/DexProtect/Binder;->setABI(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7

    .line 980
    :cond_4
    :goto_5
    const/4 v6, 0x1

    .line 1450
    :try_start_4
    const-string v5, ""

    .line 1513
    invoke-static {}, Lcom/inca/security/Proxy/JNISoxProxy;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-static {}, Lcom/inca/security/Proxy/JNISoxProxy;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x80

    invoke-virtual {v5, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    .line 692
    iget-object v5, v8, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v9, "N}\u007fJzl}iCdlha~j" #AppGuardLicense

    invoke-static {v9}, Lcom/inca/security/n;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1448
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_5

    .line 532
    const/4 v6, 0x0

    .line 1226
    :cond_5
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/inca/security/Core/AppGuardEngine;->IiiIiIIiIi:Ljava/lang/String;
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1545
    const/4 v5, 0x0

    .line 847
    :try_start_5
    const-string v9, "\u0010#\u0002Z" #SHA1

    invoke-static {v9}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v5

    .line 802
    :goto_6
    const/16 v9, 0x10

    :try_start_6
    new-array v9, v9, [B

    .line 1372
    const/16 v10, 0x10

    new-array v10, v10, [B

    fill-array-data v10, :array_0

    .line 1082
    invoke-virtual {v5, v10}, Ljava/security/MessageDigest;->update([B)V

    .line 1558
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/inca/security/Core/AppGuardEngine;->IiiIiIIiIi:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v5

    const/4 v10, 0x0

    const/16 v11, 0x10

    invoke-static {v5, v10, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1559
    invoke-static {}, Lcom/inca/security/rc;->IiiiIIIIii()Lcom/inca/security/rc;

    move-result-object v5

    sget-object v10, Lcom/inca/security/lc;->IIIIiiIiII:Lcom/inca/security/lc;

    invoke-virtual {v5, v10, v9}, Lcom/inca/security/rc;->IiiiIIIIii(Lcom/inca/security/lc;[B)Z

    .line 1475
    iget-object v5, v8, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v9, "*3\u001b\u0004\u001e\"\u0019\'#\"\u0018+ &\u0012" #AppGuardHashKey

    invoke-static {v9}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1560
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_6

    .line 1397
    const/4 v6, 0x0

    .line 832
    :cond_6
    iget-object v5, v8, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v8, "N}\u007fJzl}iLbacjn{" #AppGuardConnect

    invoke-static {v8}, Lcom/inca/security/n;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 789
    invoke-virtual {v5}, Ljava/lang/String;->length()I
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v5

    if-nez v5, :cond_7

    .line 656
    const/4 v6, 0x0

    .line 1391
    :cond_7
    if-nez v6, :cond_8

    .line 833
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/inca/security/Core/AppGuardEngine;->IIiiiiiIIi:Lcom/inca/security/Core/AppGuardEngine;

    const/4 v6, 0x2

    const/4 v8, 0x3

    const-string v9, "*-\u000f1\u0004*\u000f\u000e\n-\u0002%\u000e0\u001fm\u0013.\u0007" #AndroidManifest.xml

    invoke-static {v9}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1289
    invoke-static {v9}, Lcom/inca/security/ua;->IiiiIIIIii(Ljava/lang/String;)[B

    move-result-object v9

    .line 833
    invoke-virtual {v5, v6, v8, v9}, Lcom/inca/security/Core/AppGuardEngine;->conditionCallback(II[B)V

    .line 1406
    new-instance v5, Lcom/inca/security/ec;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/inca/security/ec;-><init>(Lcom/inca/security/Core/AppGuardEngine;)V

    .line 1058
    invoke-virtual {v5}, Lcom/inca/security/ec;->start()V

    .line 685
    :cond_8
    :goto_7
    :try_start_7
    invoke-static {}, Lcom/inca/security/Proxy/JNISoxProxy;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-static {}, Lcom/inca/security/Proxy/JNISoxProxy;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/16 v8, 0x80

    invoke-virtual {v5, v6, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 799
    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v6, "N}\u007fJzl}iB~h^gbx" #AppGuardMsgShow

    invoke-static {v6}, Lcom/inca/security/n;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_3

    move-result v5

    .line 769
    packed-switch v5, :pswitch_data_0

    .line 1288
    :goto_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    invoke-static {}, Lcom/inca/security/Proxy/JNISoxProxy;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "D/\u0002!\u00187\u001e!E0\u0004" #/libstub.so

    invoke-static {v6}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1173
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    invoke-static {}, Lcom/inca/security/Proxy/JNISoxProxy;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v6, v9}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\"cdm~{xm#|bw" #/libstub.sox

    invoke-static {v6}, Lcom/inca/security/n;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1095
    const/4 v5, 0x0

    move v6, v5

    :goto_9
    const/4 v10, 0x3

    if-ge v5, v10, :cond_f

    .line 703
    :try_start_8
    invoke-static {}, Lcom/inca/security/DexProtect/Binder;->getABI()I

    move-result v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v5}, Lcom/inca/security/Core/AppGuardEngine;->IiiiIIIIii(Landroid/content/Context;I)V

    .line 867
    new-instance v5, Lcom/inca/security/lb;

    invoke-static {}, Lcom/inca/security/Proxy/JNISoxProxy;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v5, v10}, Lcom/inca/security/lb;-><init>(Landroid/content/Context;)V

    .line 1564
    const-string v10, "\u0007*\t0\u001f6\tm\u0018,\u0013" #libstub.sox

    invoke-virtual {v5, v7}, Lcom/inca/security/lb;->IiiiIIIIii([B)V

    .line 1037
    invoke-static {v10}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "afo|yzo!~`" #libstub.so

    invoke-static {v11}, Lcom/inca/security/n;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v5, v10, v11, v12}, Lcom/inca/security/lb;->IiiiIIIIii(Ljava/lang/String;Ljava/lang/String;[B)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 844
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1045
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 940
    invoke-virtual {v5}, Ljava/io/File;->exists()Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    move-result v11

    if-eqz v11, :cond_c

    .line 1074
    :try_start_9
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 597
    const/4 v11, 0x1

    invoke-direct/range {p0 .. p1}, Lcom/inca/security/Core/AppGuardEngine;->lllIIIlllI(Landroid/content/Context;)V

    .line 1499
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/inca/security/Core/AppGuardEngine;->IIiIIiIiIi(Z)V

    .line 1311
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/inca/security/Core/AppGuardEngine;->IiiiiIIIIi:Lcom/inca/security/c;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/inca/security/c;->IiiiIIIIii(Z)V
    :try_end_9
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    .line 1070
    :goto_a
    :try_start_a
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 1534
    invoke-virtual {v10}, Ljava/io/File;->delete()Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    move-object/from16 v4, p0

    .line 1487
    :goto_b
    invoke-virtual {v4}, Lcom/inca/security/Core/AppGuardEngine;->IiiiIIIIii()Z

    move-result v5

    if-nez v5, :cond_2

    .line 668
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/inca/security/Core/AppGuardEngine;->IiiiiIIIIi:Lcom/inca/security/c;

    invoke-virtual {v5}, Lcom/inca/security/c;->IiiiIIIIii()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 792
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/inca/security/Core/AppGuardEngine;->IIiiiiiIIi:Lcom/inca/security/Core/AppGuardEngine;

    const/4 v6, 0x1

    const/16 v7, 0xa

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Lcom/inca/security/Core/AppGuardEngine;->conditionCallback(II[B)V

    goto/16 :goto_4

    .line 878
    :catch_1
    move-exception v9

    .line 1094
    :try_start_b
    const-string v9, "\\EN >" #SHA-1

    invoke-static {v9}, Lcom/inca/security/n;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-result-object v5

    goto/16 :goto_6

    .line 544
    :catch_2
    move-exception v5

    .line 833
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/inca/security/Core/AppGuardEngine;->IIiiiiiIIi:Lcom/inca/security/Core/AppGuardEngine;

    const/4 v6, 0x2

    const/4 v8, 0x3

    const-string v9, "Nck\u007f`dk@ncfkj~{#w`c" #AndroidManifest.xml

    invoke-static {v9}, Lcom/inca/security/n;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1289
    invoke-static {v9}, Lcom/inca/security/ua;->IiiiIIIIii(Ljava/lang/String;)[B

    move-result-object v9

    .line 833
    invoke-virtual {v5, v6, v8, v9}, Lcom/inca/security/Core/AppGuardEngine;->conditionCallback(II[B)V

    .line 1406
    new-instance v5, Lcom/inca/security/ec;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/inca/security/ec;-><init>(Lcom/inca/security/Core/AppGuardEngine;)V

    .line 1058
    invoke-virtual {v5}, Lcom/inca/security/ec;->start()V

    goto/16 :goto_7

    .line 1391
    :catchall_0
    move-exception v5

    if-nez v6, :cond_9

    .line 833
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/inca/security/Core/AppGuardEngine;->IIiiiiiIIi:Lcom/inca/security/Core/AppGuardEngine;

    const/4 v7, 0x2

    const/4 v8, 0x3

    const-string v9, "*-\u000f1\u0004*\u000f\u000e\n-\u0002%\u000e0\u001fm\u0013.\u0007" #AndroidManifest.xml

    invoke-static {v9}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1289
    invoke-static {v9}, Lcom/inca/security/ua;->IiiiIIIIii(Ljava/lang/String;)[B

    move-result-object v9

    .line 833
    invoke-virtual {v6, v7, v8, v9}, Lcom/inca/security/Core/AppGuardEngine;->conditionCallback(II[B)V

    .line 1406
    new-instance v6, Lcom/inca/security/ec;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/inca/security/ec;-><init>(Lcom/inca/security/Core/AppGuardEngine;)V

    .line 1058
    invoke-virtual {v6}, Lcom/inca/security/ec;->start()V

    :cond_9
    throw v5

    .line 690
    :pswitch_0
    const/4 v5, 0x1

    :try_start_c
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/inca/security/Core/AppGuardEngine;->IiiIiIIiII:Z
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_c} :catch_3

    goto/16 :goto_8

    .line 1463
    :catch_3
    move-exception v5

    goto/16 :goto_8

    .line 905
    :cond_a
    :try_start_d
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 758
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1124
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 1121
    :cond_b
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-virtual {v10}, Ljava/io/File;->delete()Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4

    .line 1095
    :cond_c
    :goto_c
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto/16 :goto_9

    .line 888
    :catch_4
    move-exception v5

    .line 725
    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    const-string v10, "\u0006%\u000c8\u0013(" #ENOSPC

    invoke-static {v10}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1340
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1183
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1301
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_d

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 1548
    :cond_d
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 566
    :cond_e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/inca/security/Core/AppGuardEngine;->IiiiiIIIIi:Lcom/inca/security/c;

    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Lcom/inca/security/c;->IiiiIIIIii(Z)V

    goto :goto_c

    :cond_f
    move-object/from16 v4, p0

    .line 1487
    goto/16 :goto_b

    .line 1430
    :cond_10
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/inca/security/Core/AppGuardEngine;->IIiiiiiIIi:Lcom/inca/security/Core/AppGuardEngine;

    const/4 v6, 0x2

    const/16 v7, 0x16

    const-string v8, "LHYHAYPAFO\\YZOP@@IFKFHK" #CEVENT_LIBSTUB_MODIFIED

    invoke-static {v8}, Lcom/inca/security/n;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 910
    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    .line 1430
    invoke-virtual {v5, v6, v7, v8}, Lcom/inca/security/Core/AppGuardEngine;->conditionCallback(II[B)V

    .line 750
    new-instance v5, Lcom/inca/security/jc;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/inca/security/jc;-><init>(Lcom/inca/security/Core/AppGuardEngine;)V

    .line 538
    invoke-virtual {v5}, Lcom/inca/security/jc;->start()V

    goto/16 :goto_4

    .line 638
    :catch_5
    move-exception v11

    goto/16 :goto_a

    .line 1107
    :catch_6
    move-exception v9

    goto/16 :goto_6

    .line 813
    :catch_7
    move-exception v5

    goto/16 :goto_5

    .line 1165
    :catch_8
    move-exception v5

    goto/16 :goto_3

    .line 1372
    :array_0
    .array-data 1
        0x76t
        -0x3et
        -0x23t
        0x19t
        0xct
        -0x2at
        0x4bt
        0x34t
        -0x6dt
        -0x18t
        -0x53t
        0x13t
        0x1et
        -0x62t
        -0x1t
        -0x79t
    .end array-data

    .line 769
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private native synthetic IIIIIIIlIl(Landroid/content/Context;Ljava/lang/String;[B)I
.end method

.method private native synthetic IIIIIIIllI()V
.end method

.method private native synthetic IIIIIIIlll()V
.end method

.method private native synthetic IIIIIIlIII()V
.end method

.method private native synthetic IIIIIIlIIl(I[B[B)I
.end method

.method private native synthetic IIIIIIlIlI(I)I
.end method

.method private native synthetic IIIIiIIIiI(JJ)V
.end method

.method public static synthetic IIiIIiIiIi(Lcom/inca/security/Core/AppGuardEngine;)Landroid/os/Handler;
    .locals 1
    .param p0, "arg0"    # Lcom/inca/security/Core/AppGuardEngine;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/inca/security/Core/AppGuardEngine;->iIiiiiiIIi:Landroid/os/Handler;

    return-object v0
.end method

.method private synthetic IIiIIiIiIi()V
    .locals 17

    .prologue
    .line 1250
    new-instance v4, Ljava/io/File;

    invoke-static {}, Lcom/inca/security/Proxy/JNISoxProxy;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/inca/security/Core/AppGuardEngine;->IIiIIIIIii:Ljava/lang/String;

    invoke-direct {v4, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1362
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1575
    .end local p0    # "this":Lcom/inca/security/Core/AppGuardEngine;
    :cond_0
    :goto_0
    return-void

    .line 899
    .restart local p0    # "this":Lcom/inca/security/Core/AppGuardEngine;
    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v5, v2

    .line 575
    new-array v7, v5, [B

    .line 1425
    :try_start_0
    const-string v2, "*\u00068l.\u0000)l%,;\"\u000f\'\u0002-\u000c" #AES/ECB/NoPadding

    invoke-static {v2}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v8

    .line 1554
    const/4 v2, 0x2

    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/inca/security/Core/AppGuardEngine;->IIiIIiIIiI:[B

    const-string v9, "NH\\" #AES

    invoke-static {v9}, Lcom/inca/security/n;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v6, v9}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v8, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 1296
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 589
    new-instance v10, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v10}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 655
    const/4 v2, 0x0

    const/4 v3, 0x0

    move v6, v3

    move v3, v2

    .line 1291
    :goto_1
    if-ge v2, v5, :cond_2

    .line 762
    add-int/lit8 v2, v3, 0x4

    const/4 v3, 0x0

    const/4 v11, 0x4

    invoke-virtual {v9, v7, v3, v11}, Ljava/io/FileInputStream;->read([BII)I

    .line 1078
    invoke-static {v7}, Lcom/inca/security/va;->iIiIIiIIIi([B)I

    move-result v11

    .line 745
    const/4 v3, 0x0

    invoke-virtual {v9, v7, v3, v11}, Ljava/io/FileInputStream;->read([BII)I

    .line 1103
    add-int/2addr v2, v11

    .line 821
    const/4 v13, 0x0

    add-int/lit8 v3, v6, 0x1

    invoke-virtual {v8, v7, v13, v11}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/io/ByteArrayOutputStream;->write([B)V

    move v6, v3

    move v3, v2

    .line 1191
    goto :goto_1

    .line 1308
    :cond_2
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V

    .line 1412
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 1424
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 823
    const/4 v2, 0x0

    invoke-static {v7, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 793
    new-instance v9, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v9, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 519
    const/4 v4, 0x1

    .line 669
    const/4 v2, 0x0

    move v5, v2

    move v13, v4

    :goto_2
    if-ge v2, v6, :cond_8

    .line 1294
    const-string v3, ""

    .line 1042
    const/4 v2, 0x0

    const/4 v4, 0x4

    invoke-virtual {v9, v7, v2, v4}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 1152
    const/4 v2, 0x0

    const/4 v4, 0x4

    invoke-virtual {v9, v7, v2, v4}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 1275
    const/4 v2, 0x0

    const/4 v4, 0x4

    invoke-virtual {v9, v7, v2, v4}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 1356
    invoke-static {v7}, Lcom/inca/security/va;->iIiIIiIIIi([B)I

    move-result v11

    .line 627
    const/4 v2, 0x0

    const/4 v4, 0x4

    invoke-virtual {v9, v7, v2, v4}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 1322
    invoke-static {v7}, Lcom/inca/security/va;->iIiIIiIIIi([B)I

    move-result v13

    .line 1171
    const/4 v2, 0x0

    const/4 v4, 0x4

    invoke-virtual {v9, v7, v2, v4}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 1086
    invoke-static {v7}, Lcom/inca/security/va;->iIiIIiIIIi([B)I

    move-result v2

    .line 1278
    if-nez v2, :cond_5

    const/4 v2, 0x1

    move v4, v2

    .line 499
    :goto_3
    const/4 v2, 0x0

    const/4 v14, 0x4

    invoke-virtual {v9, v7, v2, v14}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 828
    invoke-static {v7}, Lcom/inca/security/va;->iIiIIiIIIi([B)I

    move-result v14

    .line 720
    const/4 v2, 0x0

    invoke-virtual {v9, v7, v2, v14}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 1140
    add-int/lit8 v15, v14, 0x18

    .line 600
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v0, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v13}, Lcom/inca/security/sc;->IiiiIIIIii(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1453
    if-eqz v14, :cond_3

    .line 979
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v13, 0x0

    invoke-virtual {v3, v13, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "O" #$

    invoke-static {v3}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 938
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v13, 0x0

    invoke-virtual {v3, v13, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    const/4 v13, 0x0

    invoke-direct {v3, v7, v13, v14}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1223
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v13, 0x0

    invoke-virtual {v3, v13, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "O" #@

    invoke-static {v3}, Lcom/inca/security/n;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 565
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v13, 0x0

    invoke-virtual {v3, v13, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/inca/security/Core/AppGuardEngine;->iIIIiIiiii:[Ljava/lang/String;

    aget-object v3, v3, v11

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 722
    const/4 v2, 0x0

    .line 530
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move v3, v2

    :cond_4
    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/inca/security/cc;

    .line 1260
    invoke-virtual {v2, v11}, Lcom/inca/security/cc;->IiiiIIIIii(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4

    const/4 v3, 0x1

    .line 1262
    invoke-virtual {v2}, Lcom/inca/security/cc;->IiiiIIIIii()V

    goto :goto_4

    .line 734
    .end local p0    # "this":Lcom/inca/security/Core/AppGuardEngine;
    :catch_0
    move-exception v2

    goto/16 :goto_0

    .line 1278
    .restart local p0    # "this":Lcom/inca/security/Core/AppGuardEngine;
    :cond_5
    const/4 v2, 0x0

    move v4, v2

    goto/16 :goto_3

    .line 1215
    :cond_6
    if-nez v3, :cond_7

    .line 1563
    new-instance v2, Lcom/inca/security/cc;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v11}, Lcom/inca/security/cc;-><init>(Lcom/inca/security/Core/AppGuardEngine;Ljava/lang/String;)V

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 718
    :cond_7
    const/4 v3, 0x0

    add-int/lit8 v2, v15, 0x40

    div-int/lit8 v2, v2, 0x40

    mul-int/lit8 v11, v2, 0x40

    add-int/lit8 v2, v5, 0x1

    sub-int v5, v11, v15

    invoke-virtual {v9, v7, v3, v5}, Ljava/io/ByteArrayInputStream;->read([BII)I

    move v5, v2

    move v13, v4

    .line 669
    goto/16 :goto_2

    .line 631
    :cond_8
    invoke-virtual {v9}, Ljava/io/ByteArrayInputStream;->close()V

    .line 1034
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 887
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .end local p0    # "this":Lcom/inca/security/Core/AppGuardEngine;
    :goto_5
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/inca/security/cc;

    move-object v8, v0

    .line 780
    new-instance v2, Lcom/inca/security/xc;

    invoke-static {}, Lcom/inca/security/Proxy/JNISoxProxy;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/inca/security/Core/AppGuardEngine;->iiiiIIIiii:Lcom/inca/security/uc;

    invoke-static {}, Lcom/inca/security/AppGuard/AppGuardUserInfo;->getUserId()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/inca/security/Core/AppGuardEngine;->IiiIiIIiIi:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/inca/security/Core/AppGuardEngine;->IiIiIiiIii:[Ljava/lang/String;

    const/16 v9, 0x16

    aget-object v7, v7, v9

    .line 676
    invoke-virtual {v8}, Lcom/inca/security/cc;->IiiiIIIIii()Ljava/lang/String;

    move-result-object v8

    if-eqz v13, :cond_9

    const-string v9, "1\u000e3\u00041\u001f&\u000f" #reported

    invoke-static {v9}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v12, p0

    .local v12, "this":Lcom/inca/security/Core/AppGuardEngine;
    :goto_6
    invoke-virtual {v12}, Lcom/inca/security/Core/AppGuardEngine;->IiiiIIIIii()Ljava/lang/String;

    move-result-object v10

    const-string v11, ""

    invoke-direct/range {v2 .. v11}, Lcom/inca/security/xc;-><init>(Landroid/content/Context;Lcom/inca/security/uc;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/inca/security/xc;->start()V

    goto :goto_5

    .end local v12    # "this":Lcom/inca/security/Core/AppGuardEngine;
    :cond_9
    const-string v9, "yj\u007fbdal{hk" #terminated

    invoke-static {v9}, Lcom/inca/security/n;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    move-object/from16 v12, p0

    .restart local v12    # "this":Lcom/inca/security/Core/AppGuardEngine;
    goto :goto_6
.end method

.method private synthetic IIiIIiIiIi(Z)V
    .locals 0
    .param p1, "arg0"    # Z

    .prologue
    .line 2550
    iput-boolean p1, p0, Lcom/inca/security/Core/AppGuardEngine;->IiiIiIIiiI:Z

    .line 2005
    return-void
.end method

.method private native synthetic IIiIiIIIiI(I)V
.end method

.method private native synthetic IiIiiIiIiI(Landroid/content/Context;)V
.end method

.method public static synthetic IiiiIIIIii(Lcom/inca/security/Core/AppGuardEngine;)I
    .locals 1
    .param p0, "arg0"    # Lcom/inca/security/Core/AppGuardEngine;

    .prologue
    .line 85
    iget v0, p0, Lcom/inca/security/Core/AppGuardEngine;->iiIiIIIiii:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/inca/security/Core/AppGuardEngine;->iiIiIIIiii:I

    return v0
.end method

.method public static synthetic IiiiIIIIii(Lcom/inca/security/Core/AppGuardEngine;I[B)I
    .locals 1
    .param p0, "arg0"    # Lcom/inca/security/Core/AppGuardEngine;
    .param p1, "arg1"    # I
    .param p2, "arg2"    # [B

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Lcom/inca/security/Core/AppGuardEngine;->llIIIIlIIl(I[B)I

    move-result v0

    return v0
.end method

.method public static synthetic IiiiIIIIii(Lcom/inca/security/Core/AppGuardEngine;I[B[B)I
    .locals 1
    .param p0, "arg0"    # Lcom/inca/security/Core/AppGuardEngine;
    .param p1, "arg1"    # I
    .param p2, "arg2"    # [B
    .param p3, "arg3"    # [B

    .prologue
    .line 85
    invoke-direct {p0, p1, p2, p3}, Lcom/inca/security/Core/AppGuardEngine;->IIIIIIlIIl(I[B[B)I

    move-result v0

    return v0
.end method

.method public static synthetic IiiiIIIIii(Lcom/inca/security/Core/AppGuardEngine;)Landroid/os/Handler;
    .locals 1
    .param p0, "arg0"    # Lcom/inca/security/Core/AppGuardEngine;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/inca/security/Core/AppGuardEngine;->IiIiIiIiII:Landroid/os/Handler;

    return-object v0
.end method

.method public static synthetic IiiiIIIIii(Lcom/inca/security/Core/AppGuardEngine;)Lcom/inca/security/AppGuard/AppGuardEventListener;
    .locals 1
    .param p0, "arg0"    # Lcom/inca/security/Core/AppGuardEngine;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/inca/security/Core/AppGuardEngine;->iiiIIIiiII:Lcom/inca/security/AppGuard/AppGuardEventListener;

    return-object v0
.end method

.method public static IiiiIIIIii()Lcom/inca/security/AppGuard/SecureLibrary;
    .locals 1

    .prologue
    .line 3108
    sget-object v0, Lcom/inca/security/Core/AppGuardEngine;->IIiIIIIiIi:Lcom/inca/security/AppGuard/SecureLibrary;

    return-object v0
.end method

.method public static synthetic IiiiIIIIii(Lcom/inca/security/Core/AppGuardEngine;)Lcom/inca/security/Core/AppGuardEngine;
    .locals 1
    .param p0, "arg0"    # Lcom/inca/security/Core/AppGuardEngine;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/inca/security/Core/AppGuardEngine;->IIiiiiiIIi:Lcom/inca/security/Core/AppGuardEngine;

    return-object v0
.end method

.method public static IiiiIIIIii()Lcom/inca/security/Interface/ObjectFactory;
    .locals 1

    .prologue
    .line 2601
    sget-object v0, Lcom/inca/security/Core/AppGuardEngine;->IIIiIIiIIi:Lcom/inca/security/Interface/ObjectFactory;

    return-object v0
.end method

.method public static synthetic IiiiIIIIii(Lcom/inca/security/Core/AppGuardEngine;)Lcom/inca/security/Interface/ObjectIntegrityManager;
    .locals 1
    .param p0, "arg0"    # Lcom/inca/security/Core/AppGuardEngine;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/inca/security/Core/AppGuardEngine;->IIiiIIIiIi:Lcom/inca/security/Interface/ObjectIntegrityManager;

    return-object v0
.end method

.method public static synthetic IiiiIIIIii(Lcom/inca/security/Core/AppGuardEngine;)Ljava/lang/Object;
    .locals 1
    .param p0, "arg0"    # Lcom/inca/security/Core/AppGuardEngine;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/inca/security/Core/AppGuardEngine;->iiIIiIiIii:Ljava/lang/Object;

    return-object v0
.end method

.method public static synthetic IiiiIIIIii(Lcom/inca/security/Core/AppGuardEngine;)Ljava/util/Queue;
    .locals 1
    .param p0, "arg0"    # Lcom/inca/security/Core/AppGuardEngine;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/inca/security/Core/AppGuardEngine;->iIiiiIIiIi:Ljava/util/Queue;

    return-object v0
.end method

.method public static synthetic IiiiIIIIii(Lcom/inca/security/Core/AppGuardEngine;)V
    .locals 0
    .param p0, "arg0"    # Lcom/inca/security/Core/AppGuardEngine;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/inca/security/Core/AppGuardEngine;->IllIIIlIII()V

    return-void
.end method

.method public static synthetic IiiiIIIIii(Lcom/inca/security/Core/AppGuardEngine;)Z
    .locals 1
    .param p0, "arg0"    # Lcom/inca/security/Core/AppGuardEngine;

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/inca/security/Core/AppGuardEngine;->iiIIiIIiII:Z

    return v0
.end method

.method private synthetic IiiiIIIIii([B)Z
    .locals 9
    .param p1, "arg0"    # [B
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "TrulyRandom"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inca/security/Exception/AppGuardException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/16 v7, -0x7e

    const/16 v6, 0x30

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1882
    :try_start_0
    const-string v0, "^GL>" #SHA1

    invoke-static {v0}, Lcom/inca/security/n;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1645
    :goto_0
    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    .line 1835
    const/16 v4, 0x100

    new-array v4, v4, [B

    const/16 v5, 0x126

    .line 1827
    invoke-virtual {v3, v4}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 1913
    invoke-virtual {v0, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 1844
    invoke-virtual {v3, v4}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 1768
    invoke-virtual {v0, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 1887
    new-instance v3, Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-direct {v3, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 v0, 0x10

    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inca/security/Core/AppGuardEngine;->IIiiIiIIii:Ljava/lang/String;

    .line 1788
    new-array v0, v5, [B

    aput-byte v6, v0, v1

    aput-byte v7, v0, v2

    aput-byte v2, v0, v8

    const/4 v3, 0x3

    const/16 v4, 0x22

    aput-byte v4, v0, v3

    const/4 v3, 0x4

    aput-byte v6, v0, v3

    const/4 v3, 0x5

    const/16 v4, 0xd

    aput-byte v4, v0, v3

    const/4 v3, 0x6

    aput-byte v3, v0, v3

    const/4 v3, 0x7

    const/16 v4, 0x9

    aput-byte v4, v0, v3

    const/16 v3, 0x8

    const/16 v4, 0x2a

    aput-byte v4, v0, v3

    const/16 v3, 0x9

    const/16 v4, -0x7a

    aput-byte v4, v0, v3

    const/16 v3, 0xa

    const/16 v4, 0x48

    aput-byte v4, v0, v3

    const/16 v3, 0xb

    const/16 v4, -0x7a

    aput-byte v4, v0, v3

    const/16 v3, 0xc

    const/16 v4, -0x9

    aput-byte v4, v0, v3

    const/16 v3, 0xd

    aput-byte v3, v0, v3

    const/16 v3, 0xe

    aput-byte v2, v0, v3

    const/16 v3, 0xf

    aput-byte v2, v0, v3

    const/16 v3, 0x10

    aput-byte v2, v0, v3

    const/16 v3, 0x11

    const/4 v4, 0x5

    aput-byte v4, v0, v3

    const/16 v3, 0x12

    aput-byte v1, v0, v3

    const/16 v3, 0x13

    const/4 v4, 0x3

    aput-byte v4, v0, v3

    const/16 v3, 0x14

    aput-byte v7, v0, v3

    const/16 v3, 0x15

    aput-byte v2, v0, v3

    const/16 v3, 0x16

    const/16 v4, 0xf

    aput-byte v4, v0, v3

    const/16 v3, 0x17

    aput-byte v1, v0, v3

    const/16 v3, 0x18

    aput-byte v6, v0, v3

    const/16 v3, 0x19

    aput-byte v7, v0, v3

    const/16 v3, 0x1a

    aput-byte v2, v0, v3

    const/16 v3, 0x1b

    const/16 v4, 0xa

    aput-byte v4, v0, v3

    const/16 v3, 0x1c

    aput-byte v8, v0, v3

    const/16 v3, 0x1d

    aput-byte v7, v0, v3

    const/16 v3, 0x1e

    aput-byte v2, v0, v3

    const/16 v3, 0x1f

    aput-byte v2, v0, v3

    const/16 v3, 0x20

    aput-byte v1, v0, v3

    const/16 v3, 0x21

    const/16 v4, -0x31

    aput-byte v4, v0, v3

    const/16 v3, 0x22

    const/16 v4, -0x59

    aput-byte v4, v0, v3

    const/16 v3, 0x23

    const/4 v4, 0x7

    aput-byte v4, v0, v3

    const/16 v3, 0x24

    const/4 v4, -0x7

    aput-byte v4, v0, v3

    const/16 v3, 0x25

    const/16 v4, 0x12

    aput-byte v4, v0, v3

    const/16 v3, 0x26

    const/16 v4, 0x6a

    aput-byte v4, v0, v3

    const/16 v3, 0x27

    const/16 v4, 0x6c

    aput-byte v4, v0, v3

    const/16 v3, 0x28

    const/16 v4, 0x3c

    aput-byte v4, v0, v3

    const/16 v3, 0x29

    const/16 v4, 0x65

    aput-byte v4, v0, v3

    const/16 v3, 0x2a

    const/16 v4, -0x28

    aput-byte v4, v0, v3

    const/16 v3, 0x2b

    const/16 v4, 0x52

    aput-byte v4, v0, v3

    const/16 v3, 0x2c

    const/16 v4, -0x47

    aput-byte v4, v0, v3

    const/16 v3, 0x2d

    const/16 v4, -0x29

    aput-byte v4, v0, v3

    const/16 v3, 0x2e

    const/16 v4, 0x49

    aput-byte v4, v0, v3

    const/16 v3, 0x2f

    aput-byte v7, v0, v3

    const/16 v3, 0x41

    aput-byte v3, v0, v6

    const/16 v3, 0x31

    const/16 v4, 0x18

    aput-byte v4, v0, v3

    const/16 v3, 0x32

    const/16 v4, 0x11

    aput-byte v4, v0, v3

    const/16 v3, 0x33

    const/16 v4, -0x9

    aput-byte v4, v0, v3

    const/16 v3, 0x34

    const/16 v4, 0x76

    aput-byte v4, v0, v3

    const/16 v3, 0x35

    const/16 v4, 0x58

    aput-byte v4, v0, v3

    const/16 v3, 0x36

    const/16 v4, -0x34

    aput-byte v4, v0, v3

    const/16 v3, 0x37

    const/16 v4, 0x12

    aput-byte v4, v0, v3

    const/16 v3, 0x38

    const/16 v4, 0x61

    aput-byte v4, v0, v3

    const/16 v3, 0x39

    const/16 v4, -0x6f

    aput-byte v4, v0, v3

    const/16 v3, 0x3a

    const/16 v4, -0x2f

    aput-byte v4, v0, v3

    const/16 v3, 0x3b

    const/16 v4, -0x5f

    aput-byte v4, v0, v3

    const/16 v3, 0x3c

    const/16 v4, 0x13

    aput-byte v4, v0, v3

    const/16 v3, 0x3d

    const/16 v4, 0x77

    aput-byte v4, v0, v3

    const/16 v3, 0x3e

    const/16 v4, 0x15

    aput-byte v4, v0, v3

    const/16 v3, 0x3f

    const/16 v4, 0x61

    aput-byte v4, v0, v3

    const/16 v3, 0x40

    const/16 v4, 0x72

    aput-byte v4, v0, v3

    const/16 v3, 0x41

    const/16 v4, -0x35

    aput-byte v4, v0, v3

    const/16 v3, 0x42

    const/16 v4, -0x47

    aput-byte v4, v0, v3

    const/16 v3, 0x43

    const/16 v4, 0x22

    aput-byte v4, v0, v3

    const/16 v3, 0x44

    const/16 v4, -0x53

    aput-byte v4, v0, v3

    const/16 v3, 0x45

    const/16 v4, 0x5a

    aput-byte v4, v0, v3

    const/16 v3, 0x46

    const/16 v4, -0x59

    aput-byte v4, v0, v3

    const/16 v3, 0x47

    const/16 v4, -0x39

    aput-byte v4, v0, v3

    const/16 v3, 0x48

    const/16 v4, -0x1c

    aput-byte v4, v0, v3

    const/16 v3, 0x49

    const/16 v4, 0x14

    aput-byte v4, v0, v3

    const/16 v3, 0x4a

    const/16 v4, -0x53

    aput-byte v4, v0, v3

    const/16 v3, 0x4b

    const/16 v4, -0x11

    aput-byte v4, v0, v3

    const/16 v3, 0x4c

    const/16 v4, -0xd

    aput-byte v4, v0, v3

    const/16 v3, 0x4d

    const/16 v4, 0x43

    aput-byte v4, v0, v3

    const/16 v3, 0x4e

    const/16 v4, 0x26

    aput-byte v4, v0, v3

    const/16 v3, 0x4f

    const/16 v4, -0x56

    aput-byte v4, v0, v3

    const/16 v3, 0x50

    const/4 v4, -0x8

    aput-byte v4, v0, v3

    const/16 v3, 0x51

    const/16 v4, 0x75

    aput-byte v4, v0, v3

    const/16 v3, 0x52

    const/16 v4, -0x7b

    aput-byte v4, v0, v3

    const/16 v3, 0x53

    const/16 v4, -0x2c

    aput-byte v4, v0, v3

    const/16 v3, 0x54

    const/16 v4, 0x60

    aput-byte v4, v0, v3

    const/16 v3, 0x55

    const/16 v4, -0x4c

    aput-byte v4, v0, v3

    const/16 v3, 0x56

    const/16 v4, -0x50

    aput-byte v4, v0, v3

    const/16 v3, 0x57

    const/16 v4, -0x1e

    aput-byte v4, v0, v3

    const/16 v3, 0x58

    const/16 v4, -0x2e

    aput-byte v4, v0, v3

    const/16 v3, 0x59

    const/16 v4, -0x5c

    aput-byte v4, v0, v3

    const/16 v3, 0x5a

    const/16 v4, 0x44

    aput-byte v4, v0, v3

    const/16 v3, 0x5b

    const/16 v4, 0x1a

    aput-byte v4, v0, v3

    const/16 v3, 0x5c

    const/16 v4, -0x29

    aput-byte v4, v0, v3

    const/16 v3, 0x5d

    const/16 v4, -0x1e

    aput-byte v4, v0, v3

    const/16 v3, 0x5e

    const/16 v4, -0x26

    aput-byte v4, v0, v3

    const/16 v3, 0x5f

    const/4 v4, 0x6

    aput-byte v4, v0, v3

    const/16 v3, 0x60

    const/16 v4, 0x78

    aput-byte v4, v0, v3

    const/16 v3, 0x61

    const/16 v4, -0x1a

    aput-byte v4, v0, v3

    const/16 v3, 0x62

    const/16 v4, -0x3d

    aput-byte v4, v0, v3

    const/16 v3, 0x63

    const/16 v4, 0x48

    aput-byte v4, v0, v3

    const/16 v3, 0x64

    const/16 v4, 0x8

    aput-byte v4, v0, v3

    const/16 v3, 0x65

    const/16 v4, 0x48

    aput-byte v4, v0, v3

    const/16 v3, 0x66

    const/16 v4, -0x43

    aput-byte v4, v0, v3

    const/16 v3, 0x67

    const/16 v4, -0x31

    aput-byte v4, v0, v3

    const/16 v3, 0x68

    const/16 v4, 0x4f

    aput-byte v4, v0, v3

    const/16 v3, 0x69

    aput-byte v6, v0, v3

    const/16 v3, 0x6a

    const/16 v4, 0x50

    aput-byte v4, v0, v3

    const/16 v3, 0x6b

    const/16 v4, 0x5f

    aput-byte v4, v0, v3

    const/16 v3, 0x6c

    const/16 v4, -0x35

    aput-byte v4, v0, v3

    const/16 v3, 0x6d

    const/16 v4, -0x42

    aput-byte v4, v0, v3

    const/16 v3, 0x6e

    const/16 v4, -0x54

    aput-byte v4, v0, v3

    const/16 v3, 0x6f

    const/16 v4, -0x49

    aput-byte v4, v0, v3

    const/16 v3, 0x70

    const/16 v4, 0x27

    aput-byte v4, v0, v3

    const/16 v3, 0x71

    const/16 v4, -0x61

    aput-byte v4, v0, v3

    const/16 v3, 0x72

    const/16 v4, -0x40

    aput-byte v4, v0, v3

    const/16 v3, 0x73

    const/16 v4, 0x51

    aput-byte v4, v0, v3

    const/16 v3, 0x74

    const/16 v4, 0x47

    aput-byte v4, v0, v3

    const/16 v3, 0x75

    const/16 v4, -0x64

    aput-byte v4, v0, v3

    const/16 v3, 0x76

    const/16 v4, 0x10

    aput-byte v4, v0, v3

    const/16 v3, 0x77

    aput-byte v6, v0, v3

    const/16 v3, 0x78

    const/16 v4, -0x6b

    aput-byte v4, v0, v3

    const/16 v3, 0x79

    const/16 v4, 0x12

    aput-byte v4, v0, v3

    const/16 v3, 0x7a

    const/16 v4, 0x10

    aput-byte v4, v0, v3

    const/16 v3, 0x7b

    const/16 v4, -0x54

    aput-byte v4, v0, v3

    const/16 v3, 0x7c

    const/16 v4, 0x35

    aput-byte v4, v0, v3

    const/16 v3, 0x7d

    const/16 v4, 0x77

    aput-byte v4, v0, v3

    const/16 v3, 0x7e

    const/16 v4, 0x76

    aput-byte v4, v0, v3

    const/16 v3, 0x7f

    const/16 v4, 0xf

    aput-byte v4, v0, v3

    const/16 v3, 0x80

    const/16 v4, 0x3c

    aput-byte v4, v0, v3

    const/16 v3, 0x81

    const/16 v4, -0x57

    aput-byte v4, v0, v3

    const/16 v3, 0x82

    const/16 v4, -0xb

    aput-byte v4, v0, v3

    const/16 v3, 0x83

    const/16 v4, -0x2e

    aput-byte v4, v0, v3

    const/16 v3, 0x84

    const/16 v4, 0x39

    aput-byte v4, v0, v3

    const/16 v3, 0x85

    const/4 v4, 0x7

    aput-byte v4, v0, v3

    const/16 v3, 0x86

    const/16 v4, 0x5d

    aput-byte v4, v0, v3

    const/16 v3, 0x87

    const/16 v4, 0x7d

    aput-byte v4, v0, v3

    const/16 v3, 0x88

    const/16 v4, 0x20

    aput-byte v4, v0, v3

    const/16 v3, 0x89

    const/16 v4, -0x34

    aput-byte v4, v0, v3

    const/16 v3, 0x8a

    const/16 v4, 0x5e

    aput-byte v4, v0, v3

    const/16 v3, 0x8b

    const/4 v4, -0x4

    aput-byte v4, v0, v3

    const/16 v3, 0x8c

    const/16 v4, 0x62

    aput-byte v4, v0, v3

    const/16 v3, 0x8d

    const/4 v4, 0x4

    aput-byte v4, v0, v3

    const/16 v3, 0x8e

    const/16 v4, 0x2f

    aput-byte v4, v0, v3

    const/16 v3, 0x8f

    const/16 v4, 0x3c

    aput-byte v4, v0, v3

    const/16 v3, 0x90

    const/16 v4, 0x26

    aput-byte v4, v0, v3

    const/16 v3, 0x91

    const/16 v4, -0x72

    aput-byte v4, v0, v3

    const/16 v3, 0x92

    const/16 v4, 0x31

    aput-byte v4, v0, v3

    const/16 v3, 0x93

    const/16 v4, 0x56

    aput-byte v4, v0, v3

    const/16 v3, 0x94

    const/16 v4, -0x56

    aput-byte v4, v0, v3

    const/16 v3, 0x95

    const/16 v4, 0x1e

    aput-byte v4, v0, v3

    const/16 v3, 0x96

    const/16 v4, -0x76

    aput-byte v4, v0, v3

    const/16 v3, 0x97

    const/16 v4, -0x66

    aput-byte v4, v0, v3

    const/16 v3, 0x98

    const/16 v4, -0x3a

    aput-byte v4, v0, v3

    const/16 v3, 0x99

    const/4 v4, -0x2

    aput-byte v4, v0, v3

    const/16 v3, 0x9a

    const/16 v4, -0x28

    aput-byte v4, v0, v3

    const/16 v3, 0x9b

    const/16 v4, 0x61

    aput-byte v4, v0, v3

    const/16 v3, 0x9c

    const/16 v4, 0x4d

    aput-byte v4, v0, v3

    const/16 v3, 0x9d

    const/16 v4, -0x2f

    aput-byte v4, v0, v3

    const/16 v3, 0x9e

    const/16 v4, 0x6c

    aput-byte v4, v0, v3

    const/16 v3, 0x9f

    const/16 v4, -0x67

    aput-byte v4, v0, v3

    const/16 v3, 0xa0

    const/16 v4, 0xb

    aput-byte v4, v0, v3

    const/16 v3, 0xa1

    const/16 v4, -0x6e

    aput-byte v4, v0, v3

    const/16 v3, 0xa2

    const/16 v4, 0x22

    aput-byte v4, v0, v3

    const/16 v3, 0xa3

    const/16 v4, -0x1a

    aput-byte v4, v0, v3

    const/16 v3, 0xa4

    const/16 v4, -0x15

    aput-byte v4, v0, v3

    const/16 v3, 0xa5

    const/16 v4, 0x3d

    aput-byte v4, v0, v3

    const/16 v3, 0xa6

    const/4 v4, 0x6

    aput-byte v4, v0, v3

    const/16 v3, 0xa7

    const/16 v4, 0x69

    aput-byte v4, v0, v3

    const/16 v3, 0xa8

    const/16 v4, -0x4f

    aput-byte v4, v0, v3

    const/16 v3, 0xa9

    const/16 v4, -0x47

    aput-byte v4, v0, v3

    const/16 v3, 0xaa

    const/16 v4, 0x66

    aput-byte v4, v0, v3

    const/16 v3, 0xab

    const/16 v4, -0xf

    aput-byte v4, v0, v3

    const/16 v3, 0xac

    const/16 v4, 0x1a

    aput-byte v4, v0, v3

    const/16 v3, 0xad

    const/4 v4, -0x4

    aput-byte v4, v0, v3

    const/16 v3, 0xae

    const/16 v4, 0x6d

    aput-byte v4, v0, v3

    const/16 v3, 0xaf

    const/16 v4, -0x26

    aput-byte v4, v0, v3

    const/16 v3, 0xb0

    const/16 v4, 0x5e

    aput-byte v4, v0, v3

    const/16 v3, 0xb1

    const/16 v4, -0xe

    aput-byte v4, v0, v3

    const/16 v3, 0xb2

    const/16 v4, -0x4c

    aput-byte v4, v0, v3

    const/16 v3, 0xb3

    aput-byte v1, v0, v3

    const/16 v3, 0xb4

    const/16 v4, 0x58

    aput-byte v4, v0, v3

    const/16 v3, 0xb5

    const/16 v4, -0x4f

    aput-byte v4, v0, v3

    const/16 v3, 0xb6

    const/16 v4, 0x21

    aput-byte v4, v0, v3

    const/16 v3, 0xb7

    const/16 v4, -0x2b

    aput-byte v4, v0, v3

    const/16 v3, 0xb8

    const/16 v4, -0x73

    aput-byte v4, v0, v3

    const/16 v3, 0xb9

    const/16 v4, 0x65

    aput-byte v4, v0, v3

    const/16 v3, 0xba

    const/16 v4, 0x7b

    aput-byte v4, v0, v3

    const/16 v3, 0xbb

    const/16 v4, -0x11

    aput-byte v4, v0, v3

    const/16 v3, 0xbc

    const/16 v4, -0xf

    aput-byte v4, v0, v3

    const/16 v3, 0xbd

    const/16 v4, -0xf

    aput-byte v4, v0, v3

    const/16 v3, 0xbe

    const/16 v4, -0xe

    aput-byte v4, v0, v3

    const/16 v3, 0xbf

    aput-byte v6, v0, v3

    const/16 v3, 0xc0

    const/16 v4, -0x55

    aput-byte v4, v0, v3

    const/16 v3, 0xc1

    aput-byte v8, v0, v3

    const/16 v3, 0xc2

    const/16 v4, 0x2a

    aput-byte v4, v0, v3

    const/16 v3, 0xc3

    const/16 v4, 0x16

    aput-byte v4, v0, v3

    const/16 v3, 0xc4

    const/16 v4, 0x60

    aput-byte v4, v0, v3

    const/16 v3, 0xc5

    const/16 v4, 0x52

    aput-byte v4, v0, v3

    const/16 v3, 0xc6

    const/16 v4, 0x2f

    aput-byte v4, v0, v3

    const/16 v3, 0xc7

    const/16 v4, 0x32

    aput-byte v4, v0, v3

    const/16 v3, 0xc8

    const/16 v4, 0x71

    aput-byte v4, v0, v3

    const/16 v3, 0xc9

    aput-byte v1, v0, v3

    const/16 v3, 0xca

    const/16 v4, 0x7e

    aput-byte v4, v0, v3

    const/16 v3, 0xcb

    const/16 v4, -0x3c

    aput-byte v4, v0, v3

    const/16 v3, 0xcc

    const/4 v4, 0x4

    aput-byte v4, v0, v3

    const/16 v3, 0xcd

    const/16 v4, -0x6d

    aput-byte v4, v0, v3

    const/16 v3, 0xce

    const/16 v4, -0x17

    aput-byte v4, v0, v3

    const/16 v3, 0xcf

    const/16 v4, 0x69

    aput-byte v4, v0, v3

    const/16 v3, 0xd0

    const/16 v4, 0x16

    aput-byte v4, v0, v3

    const/16 v3, 0xd1

    const/16 v4, 0x59

    aput-byte v4, v0, v3

    const/16 v3, 0xd2

    const/16 v4, -0x13

    aput-byte v4, v0, v3

    const/16 v3, 0xd3

    const/16 v4, -0x26

    aput-byte v4, v0, v3

    const/16 v3, 0xd4

    const/16 v4, 0x2c

    aput-byte v4, v0, v3

    const/16 v3, 0xd5

    const/4 v4, 0x3

    aput-byte v4, v0, v3

    const/16 v3, 0xd6

    const/16 v4, 0x27

    aput-byte v4, v0, v3

    const/16 v3, 0xd7

    const/16 v4, 0x7d

    aput-byte v4, v0, v3

    const/16 v3, 0xd8

    const/16 v4, 0x5e

    aput-byte v4, v0, v3

    const/16 v3, 0xd9

    const/16 v4, -0x23

    aput-byte v4, v0, v3

    const/16 v3, 0xda

    const/16 v4, 0x4b

    aput-byte v4, v0, v3

    const/16 v3, 0xdb

    const/16 v4, -0x75

    aput-byte v4, v0, v3

    const/16 v3, 0xdc

    const/16 v4, -0x26

    aput-byte v4, v0, v3

    const/16 v3, 0xdd

    const/16 v4, 0x2d

    aput-byte v4, v0, v3

    const/16 v3, 0xde

    const/16 v4, -0x61

    aput-byte v4, v0, v3

    const/16 v3, 0xdf

    const/16 v4, 0x18

    aput-byte v4, v0, v3

    const/16 v3, 0xe0

    const/16 v4, -0x43

    aput-byte v4, v0, v3

    const/16 v3, 0xe1

    const/16 v4, -0x7d

    aput-byte v4, v0, v3

    const/16 v3, 0xe2

    const/16 v4, 0x3d

    aput-byte v4, v0, v3

    const/16 v3, 0xe3

    const/16 v4, -0x4f

    aput-byte v4, v0, v3

    const/16 v3, 0xe4

    aput-byte v2, v0, v3

    const/16 v3, 0xe5

    const/16 v4, -0x52

    aput-byte v4, v0, v3

    const/16 v3, 0xe6

    const/16 v4, 0x47

    aput-byte v4, v0, v3

    const/16 v3, 0xe7

    const/16 v4, -0x54

    aput-byte v4, v0, v3

    const/16 v3, 0xe8

    const/16 v4, 0x55

    aput-byte v4, v0, v3

    const/16 v3, 0xe9

    const/16 v4, -0x77

    aput-byte v4, v0, v3

    const/16 v3, 0xea

    const/16 v4, 0x7e

    aput-byte v4, v0, v3

    const/16 v3, 0xeb

    const/16 v4, -0x3f

    aput-byte v4, v0, v3

    const/16 v3, 0xec

    const/16 v4, 0x19

    aput-byte v4, v0, v3

    const/16 v3, 0xed

    const/16 v4, -0x59

    aput-byte v4, v0, v3

    const/16 v3, 0xee

    const/16 v4, -0x5b

    aput-byte v4, v0, v3

    const/16 v3, 0xef

    const/16 v4, 0x3b

    aput-byte v4, v0, v3

    const/16 v3, 0xf0

    const/16 v4, -0x5e

    aput-byte v4, v0, v3

    const/16 v3, 0xf1

    const/16 v4, 0x4f

    aput-byte v4, v0, v3

    const/16 v3, 0xf2

    const/16 v4, -0x77

    aput-byte v4, v0, v3

    const/16 v3, 0xf3

    const/4 v4, -0x8

    aput-byte v4, v0, v3

    const/16 v3, 0xf4

    const/4 v4, -0x1

    aput-byte v4, v0, v3

    const/16 v3, 0xf5

    const/16 v4, 0x4a

    aput-byte v4, v0, v3

    const/16 v3, 0xf6

    const/16 v4, -0x7b

    aput-byte v4, v0, v3

    const/16 v3, 0xf7

    const/16 v4, 0x6e

    aput-byte v4, v0, v3

    const/16 v3, 0xf8

    const/16 v4, -0x43

    aput-byte v4, v0, v3

    const/16 v3, 0xf9

    const/16 v4, 0x23

    aput-byte v4, v0, v3

    const/16 v3, 0xfa

    const/16 v4, 0x37

    aput-byte v4, v0, v3

    const/16 v3, 0xfb

    const/16 v4, 0x7d

    aput-byte v4, v0, v3

    const/16 v3, 0xfc

    const/16 v4, -0x3b

    aput-byte v4, v0, v3

    const/16 v3, 0xfd

    const/16 v4, 0x3d

    aput-byte v4, v0, v3

    const/16 v3, 0xfe

    const/16 v4, 0x6e

    aput-byte v4, v0, v3

    const/16 v3, 0xff

    const/16 v4, 0x77

    aput-byte v4, v0, v3

    const/16 v3, 0x100

    const/16 v4, 0x13

    aput-byte v4, v0, v3

    const/16 v3, 0x101

    const/16 v4, 0x12

    aput-byte v4, v0, v3

    const/16 v3, 0x102

    const/16 v4, -0x5e

    aput-byte v4, v0, v3

    const/16 v3, 0x103

    const/16 v4, -0x7f

    aput-byte v4, v0, v3

    const/16 v3, 0x104

    const/16 v4, -0x63

    aput-byte v4, v0, v3

    const/16 v3, 0x105

    const/16 v4, 0x32

    aput-byte v4, v0, v3

    const/16 v3, 0x106

    aput-byte v6, v0, v3

    const/16 v3, 0x107

    const/16 v4, -0x9

    aput-byte v4, v0, v3

    const/16 v3, 0x108

    const/16 v4, -0x57

    aput-byte v4, v0, v3

    const/16 v3, 0x109

    const/16 v4, -0x64

    aput-byte v4, v0, v3

    const/16 v3, 0x10a

    const/16 v4, -0x14

    aput-byte v4, v0, v3

    const/16 v3, 0x10b

    const/16 v4, 0x63

    aput-byte v4, v0, v3

    const/16 v3, 0x10c

    const/16 v4, -0x6f

    aput-byte v4, v0, v3

    const/16 v3, 0x10d

    const/16 v4, -0x19

    aput-byte v4, v0, v3

    const/16 v3, 0x10e

    const/16 v4, -0x28

    aput-byte v4, v0, v3

    const/16 v3, 0x10f

    const/16 v4, 0x72

    aput-byte v4, v0, v3

    const/16 v3, 0x110

    const/16 v4, -0x6b

    aput-byte v4, v0, v3

    const/16 v3, 0x111

    const/16 v4, -0x6d

    aput-byte v4, v0, v3

    const/16 v3, 0x112

    const/16 v4, -0x5e

    aput-byte v4, v0, v3

    const/16 v3, 0x113

    const/16 v4, -0x67

    aput-byte v4, v0, v3

    const/16 v3, 0x114

    const/16 v4, -0x7f

    aput-byte v4, v0, v3

    const/16 v3, 0x115

    const/16 v4, 0x52

    aput-byte v4, v0, v3

    const/16 v3, 0x116

    const/16 v4, 0x3e

    aput-byte v4, v0, v3

    const/16 v3, 0x117

    const/16 v4, -0x72

    aput-byte v4, v0, v3

    const/16 v3, 0x118

    const/16 v4, 0x5e

    aput-byte v4, v0, v3

    const/16 v3, 0x119

    const/16 v4, 0x5f

    aput-byte v4, v0, v3

    const/16 v3, 0x11a

    const/16 v4, 0x23

    aput-byte v4, v0, v3

    const/16 v3, 0x11b

    const/16 v4, -0x1b

    aput-byte v4, v0, v3

    const/16 v3, 0x11c

    const/16 v4, -0x76

    aput-byte v4, v0, v3

    const/16 v3, 0x11d

    const/16 v4, -0x60

    aput-byte v4, v0, v3

    const/16 v3, 0x11e

    const/16 v4, 0x2a

    aput-byte v4, v0, v3

    const/16 v3, 0x11f

    const/16 v4, 0xa

    aput-byte v4, v0, v3

    const/16 v3, 0x120

    const/16 v4, -0x4f

    aput-byte v4, v0, v3

    const/16 v3, 0x121

    aput-byte v8, v0, v3

    const/16 v3, 0x122

    const/4 v4, 0x3

    aput-byte v4, v0, v3

    const/16 v3, 0x123

    aput-byte v2, v0, v3

    const/16 v3, 0x124

    aput-byte v1, v0, v3

    const/16 v3, 0x125

    aput-byte v2, v0, v3

    .line 1806
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/inca/security/Proxy/JNISoxProxy;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "D" #/

    invoke-static {v4}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/inca/security/Core/AppGuardEngine;->IIiiIiIIii:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1821
    :try_start_1
    new-instance v4, Lcom/inca/security/lb;

    invoke-static {}, Lcom/inca/security/Proxy/JNISoxProxy;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/inca/security/lb;-><init>(Landroid/content/Context;)V

    .line 1745
    const-string v5, "cdmhajfcj#|bw" #libengine.sox

    invoke-virtual {v4, v0}, Lcom/inca/security/lb;->IiiiIIIIii([B)V

    .line 1650
    invoke-static {v5}, Lcom/inca/security/n;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/inca/security/Core/AppGuardEngine;->IIiiIiIIii:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v4, v0, v5, v6}, Lcom/inca/security/lb;->IiiiIIIIii(Ljava/lang/String;Ljava/lang/String;[B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1895
    invoke-static {}, Lcom/inca/security/Proxy/JNISoxProxy;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, v3, p1}, Lcom/inca/security/Core/AppGuardEngine;->IIIIIIIlIl(Landroid/content/Context;Ljava/lang/String;[B)I

    move-result v0

    .line 1830
    if-gez v0, :cond_4

    .line 1801
    iget-object v0, p0, Lcom/inca/security/Core/AppGuardEngine;->IIiiiiiIIi:Lcom/inca/security/Core/AppGuardEngine;

    const/4 v4, 0x1

    const/16 v5, 0x8

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v5, v6}, Lcom/inca/security/Core/AppGuardEngine;->conditionCallback(II[B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move v0, v1

    .line 1875
    :goto_1
    return v0

    .line 1929
    :catch_0
    move-exception v0

    .line 1713
    :try_start_2
    const-string v0, "8\u000b*nZ" #SHA-1

    invoke-static {v0}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    goto/16 :goto_0

    .line 1687
    :catch_1
    move-exception v0

    .line 1896
    new-instance v1, Lcom/inca/security/Exception/AppGuardException;

    const-string v2, "julh\u007fyfba" #exception

    invoke-static {v2}, Lcom/inca/security/n;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/inca/security/Exception/AppGuardException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1799
    :cond_0
    :try_start_3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1751
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1842
    :cond_1
    iget-object v0, p0, Lcom/inca/security/Core/AppGuardEngine;->IIiiiiiIIi:Lcom/inca/security/Core/AppGuardEngine;

    const/4 v4, 0x1

    const/16 v5, 0x8

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v5, v6}, Lcom/inca/security/Core/AppGuardEngine;->conditionCallback(II[B)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move v0, v1

    .line 1862
    goto :goto_1

    .line 1634
    :catch_2
    move-exception v0

    .line 1714
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v4, "\u0006%\u000c8\u0013(" #ENOSPC

    invoke-static {v4}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1888
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1810
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1863
    :cond_2
    iget-object v0, p0, Lcom/inca/security/Core/AppGuardEngine;->IIiiiiiIIi:Lcom/inca/security/Core/AppGuardEngine;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/inca/security/Core/AppGuardEngine;->conditionCallback(II[B)V

    .line 1798
    const-wide/32 v2, 0x88b8

    :try_start_4
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_3

    :goto_2
    move v0, v1

    .line 1838
    goto :goto_1

    .line 1720
    :cond_3
    iget-object v0, p0, Lcom/inca/security/Core/AppGuardEngine;->IIiiiiiIIi:Lcom/inca/security/Core/AppGuardEngine;

    const/16 v1, 0x16

    const-string v3, "LHYHAYPAFOJCHDAHP@@IFKFHK" #CEVENT_LIBENGINE_MODIFIED

    invoke-static {v3}, Lcom/inca/security/n;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1666
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 1720
    invoke-virtual {v0, v8, v1, v3}, Lcom/inca/security/Core/AppGuardEngine;->conditionCallback(II[B)V

    .line 1660
    new-instance v0, Lcom/inca/security/yk;

    invoke-direct {v0, p0}, Lcom/inca/security/yk;-><init>(Lcom/inca/security/Core/AppGuardEngine;)V

    .line 1831
    invoke-virtual {v0}, Lcom/inca/security/yk;->start()V

    :cond_4
    move v0, v2

    .line 1817
    goto/16 :goto_1

    .line 1604
    :catch_3
    move-exception v0

    goto :goto_2
.end method

.method public static synthetic IiiiIIIIii(Lcom/inca/security/Core/AppGuardEngine;)[B
    .locals 1
    .param p0, "arg0"    # Lcom/inca/security/Core/AppGuardEngine;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/inca/security/Core/AppGuardEngine;->IiiIiiiIiI:[B

    return-object v0
.end method

.method public static IiiiIIIIii([BI)[B
    .locals 1
    .param p0, "arg0"    # [B
    .param p1, "arg1"    # I

    .prologue
    .line 2683
    invoke-static {p0, p1}, Lcom/inca/security/Core/AppGuardEngine;->iIiIIIiIiI([BI)[B

    move-result-object v0

    return-object v0
.end method

.method private native synthetic IiiiIIiIii()I
.end method

.method private native synthetic IlIIIIlllI(Z)V
.end method

.method private native synthetic IllIIIlIII()V
.end method

.method private static native synthetic iIiIIIiIiI([BI)[B
.end method

.method public static synthetic iIiIIiIIIi(Lcom/inca/security/Core/AppGuardEngine;)Landroid/os/Handler;
    .locals 1
    .param p0, "arg0"    # Lcom/inca/security/Core/AppGuardEngine;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/inca/security/Core/AppGuardEngine;->iiiIIiIiiI:Landroid/os/Handler;

    return-object v0
.end method

.method public static synthetic iIiIIiIIIi(Lcom/inca/security/Core/AppGuardEngine;)Z
    .locals 1
    .param p0, "arg0"    # Lcom/inca/security/Core/AppGuardEngine;

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/inca/security/Core/AppGuardEngine;->iIIiIIIIiI:Z

    return v0
.end method

.method public static iiiiIIiiII()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2027
    sget-object v0, Lcom/inca/security/Core/AppGuardEngine;->IIIiIIiiii:Ljava/lang/String;

    return-object v0
.end method

.method public static iiiiiiiIii()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2056
    sget-object v0, Lcom/inca/security/Core/AppGuardEngine;->IIIiiIIiii:Ljava/lang/String;

    return-object v0
.end method

.method private synthetic iiiiiiiIii()V
    .locals 1

    .prologue
    .line 2978
    new-instance v0, Lcom/inca/security/fd;

    invoke-direct {v0, p0}, Lcom/inca/security/fd;-><init>(Lcom/inca/security/Core/AppGuardEngine;)V

    .line 3347
    invoke-virtual {v0}, Lcom/inca/security/fd;->start()V

    .line 2381
    return-void
.end method

.method private native synthetic llIIIIlIIl(I[B)I
.end method

.method private native synthetic lllIIIlllI(Landroid/content/Context;)V
.end method


# virtual methods
.method public IIiIIiIiIi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2728
    invoke-static {}, Lcom/inca/security/AppGuard/AppGuardUserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public IiIIIIIIIi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2848
    invoke-static {}, Lcom/inca/security/yb;->IiiiIIIIii()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public IiIiiIiiII()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2673
    sget-object v0, Lcom/inca/security/Core/AppGuardEngine;->IIIiiIIiii:Ljava/lang/String;

    return-object v0
.end method

.method public IiIiiIiiII()V
    .locals 7

    .prologue
    .line 3245
    iget-object v1, p0, Lcom/inca/security/Core/AppGuardEngine;->iIIIIIiIII:Ljava/lang/Object;

    monitor-enter v1

    .line 2282
    :try_start_0
    iget-boolean v0, p0, Lcom/inca/security/Core/AppGuardEngine;->IIIIiiIiiI:Z

    if-eqz v0, :cond_0

    .line 3309
    monitor-exit v1

    :goto_0
    return-void

    .line 2390
    :cond_0
    iget-object v0, p0, Lcom/inca/security/Core/AppGuardEngine;->IIiIiIIIii:Lcom/inca/security/Core/WeakRefHandler;

    iget-object v2, p0, Lcom/inca/security/Core/AppGuardEngine;->IIiIiIIIii:Lcom/inca/security/Core/WeakRefHandler;

    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 2946
    invoke-virtual {v2, v4, v3, v4}, Lcom/inca/security/Core/WeakRefHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 2390
    invoke-virtual {v0, v2}, Lcom/inca/security/Core/WeakRefHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 2309
    iget-wide v2, p0, Lcom/inca/security/Core/AppGuardEngine;->IIiiiIIiII:J

    const-wide v4, 0x80000000L

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    .line 2328
    iget-boolean v0, p0, Lcom/inca/security/Core/AppGuardEngine;->IIIiIiiiii:Z

    if-eqz v0, :cond_1

    .line 2592
    iget-object v0, p0, Lcom/inca/security/Core/AppGuardEngine;->IiiIiiiiii:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 3116
    :try_start_1
    invoke-static {}, Lcom/inca/security/Proxy/JNISoxProxy;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3281
    invoke-static {}, Lcom/inca/security/Proxy/JNISoxProxy;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/inca/security/Core/AppGuardEngine;->IiiIiiiiii:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "\n-\u000f1\u0004*\u000fm\u0002-\u001f&\u00057E\"\u00087\u0002,\u0005m)\u0002?\u0017.\u00112\u001c(\u000b*\r,\u0006/" #android.intent.action.BATTERY_CHANGED

    invoke-static {v4}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3039
    :cond_1
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/inca/security/Core/AppGuardEngine;->IIiIiIIIii:Lcom/inca/security/Core/WeakRefHandler;

    iget-object v2, p0, Lcom/inca/security/Core/AppGuardEngine;->IIiIiIIIii:Lcom/inca/security/Core/WeakRefHandler;

    const/4 v3, 0x3

    const/4 v4, 0x0

    .line 2330
    invoke-virtual {v2, v4, v3, v4}, Lcom/inca/security/Core/WeakRefHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 3039
    invoke-virtual {v0, v2}, Lcom/inca/security/Core/WeakRefHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 2256
    iget-object v0, p0, Lcom/inca/security/Core/AppGuardEngine;->IIiIiIIIii:Lcom/inca/security/Core/WeakRefHandler;

    iget-object v2, p0, Lcom/inca/security/Core/AppGuardEngine;->IIiIiIIIii:Lcom/inca/security/Core/WeakRefHandler;

    const/4 v3, 0x4

    const/4 v4, 0x0

    .line 2771
    invoke-virtual {v2, v4, v3, v4}, Lcom/inca/security/Core/WeakRefHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 2256
    invoke-virtual {v0, v2}, Lcom/inca/security/Core/WeakRefHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 2808
    invoke-direct {p0}, Lcom/inca/security/Core/AppGuardEngine;->IIIIIIlIII()V

    .line 3173
    invoke-static {}, Lcom/inca/security/DexProtect/Binder;->getReserved1()Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 2827
    if-eqz v0, :cond_3

    .line 2802
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 2944
    const-string v3, "dFDfDFdFdf" #iIIiIIiIii

    invoke-static {v3}, Lcom/inca/security/n;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 2685
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1995
    :cond_2
    :goto_2
    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/inca/security/Core/AppGuardEngine;->IIIIiiIiiI:Z

    .line 3145
    monitor-exit v1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 3094
    :cond_3
    :try_start_5
    invoke-static {}, Lcom/inca/security/DexProtect/Binder;->getABI()I

    move-result v0

    if-eqz v0, :cond_2

    .line 2224
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/inca/security/Core/AppGuardEngine;->IIiIiIIIiI(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 3186
    :catch_0
    move-exception v0

    goto :goto_2

    .line 2770
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public IiiiIIIIii()I
    .locals 1

    .prologue
    .line 2655
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/inca/security/Core/AppGuardEngine;->IIIIIIlIlI(I)I

    move-result v0

    return v0
.end method

.method public IiiiIIIIii(I)I
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 2492
    packed-switch p1, :pswitch_data_0

    .line 2490
    .end local p1    # "arg0":I
    :goto_0
    return p1

    .line 2208
    .restart local p1    # "arg0":I
    :pswitch_0
    const/4 p1, 0x6

    goto :goto_0

    .line 2492
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public IiiiIIIIii()Ljava/lang/String;
    .locals 7

    .prologue
    .line 2347
    const-string v0, ">-\u0000-\u00044\u0005" #Unknown

    invoke-static {v0}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2427
    :try_start_0
    new-instance v0, Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v3, "_anyib}`5(k#*i/Ozdci5(w#*u!(w" #Platform:%d.%d Build:%x.%x.%x

    invoke-static {v3}, Lcom/inca/security/n;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/16 v6, 0xa

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 2112
    invoke-direct {p0, v5}, Lcom/inca/security/Core/AppGuardEngine;->IIIIIIlIlI(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const/16 v6, 0x97

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const/4 v6, 0x6

    .line 2324
    invoke-direct {p0, v6}, Lcom/inca/security/Core/AppGuardEngine;->IIIIIIlIlI(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const/4 v6, 0x7

    invoke-direct {p0, v6}, Lcom/inca/security/Core/AppGuardEngine;->IIIIIIlIlI(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 2427
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 3147
    :goto_0
    return-object v0

    .line 2345
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 3147
    goto :goto_0
.end method

.method public IiiiIIIIii()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 2668
    iget-object v2, p0, Lcom/inca/security/Core/AppGuardEngine;->iIIIIIiIII:Ljava/lang/Object;

    monitor-enter v2

    .line 2757
    :try_start_0
    iget-boolean v0, p0, Lcom/inca/security/Core/AppGuardEngine;->IIIIiiIiiI:Z

    if-nez v0, :cond_0

    .line 2706
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-void

    .line 3412
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/inca/security/Core/AppGuardEngine;->IiIIIiIIIi:Lcom/inca/security/qc;

    if-eqz v0, :cond_1

    .line 2834
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/inca/security/Core/AppGuardEngine;->IiIIIiIIIi:Lcom/inca/security/qc;

    invoke-virtual {v1}, Lcom/inca/security/qc;->IiiiIIIIii()V

    .line 2196
    iput-object v0, p0, Lcom/inca/security/Core/AppGuardEngine;->IiIIIiIIIi:Lcom/inca/security/qc;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2740
    :cond_1
    :goto_1
    :try_start_2
    iget-wide v0, p0, Lcom/inca/security/Core/AppGuardEngine;->IIiiiIIiII:J

    const-wide v4, 0x80000000L

    and-long/2addr v0, v4

    cmp-long v0, v0, v6

    if-nez v0, :cond_2

    .line 3179
    iget-boolean v0, p0, Lcom/inca/security/Core/AppGuardEngine;->IIIiIiiiii:Z

    if-eqz v0, :cond_2

    .line 2849
    iget-object v0, p0, Lcom/inca/security/Core/AppGuardEngine;->IiiIiiiiii:Landroid/content/BroadcastReceiver;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_2

    .line 3315
    :try_start_3
    invoke-static {}, Lcom/inca/security/Proxy/JNISoxProxy;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2737
    invoke-static {}, Lcom/inca/security/Proxy/JNISoxProxy;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/inca/security/Core/AppGuardEngine;->IiiIiiiiii:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2951
    :cond_2
    :goto_2
    :try_start_4
    iget-wide v0, p0, Lcom/inca/security/Core/AppGuardEngine;->IIiiiIIiII:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-wide/16 v4, 0x800

    and-long/2addr v0, v4

    cmp-long v0, v0, v6

    if-nez v0, :cond_3

    .line 3048
    :try_start_5
    iget-object v0, p0, Lcom/inca/security/Core/AppGuardEngine;->IiIIIIiIIi:Lcom/inca/security/dc;

    if-eqz v0, :cond_3

    .line 2126
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/inca/security/Core/AppGuardEngine;->IiIIIIiIIi:Lcom/inca/security/dc;

    invoke-virtual {v1}, Lcom/inca/security/dc;->IiiiIIIIii()V

    .line 2042
    iput-object v0, p0, Lcom/inca/security/Core/AppGuardEngine;->IiIIIIiIIi:Lcom/inca/security/dc;
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 3063
    :cond_3
    :goto_3
    :try_start_6
    iget-wide v0, p0, Lcom/inca/security/Core/AppGuardEngine;->IIiiiIIiII:J
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const-wide/32 v4, 0x8000000

    and-long/2addr v0, v4

    cmp-long v0, v0, v6

    if-nez v0, :cond_4

    .line 2152
    :try_start_7
    iget-object v1, p0, Lcom/inca/security/Core/AppGuardEngine;->iiiIiiiiII:Lcom/inca/security/ub;

    monitor-enter v1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 2536
    :try_start_8
    iget-boolean v0, p0, Lcom/inca/security/Core/AppGuardEngine;->iiiIiiIiIi:Z

    if-eqz v0, :cond_6

    .line 2432
    iget-object v0, p0, Lcom/inca/security/Core/AppGuardEngine;->iiiIiiiiII:Lcom/inca/security/ub;

    invoke-virtual {v0}, Lcom/inca/security/ub;->IiiiIIIIii()V

    move-object v0, v1

    .line 3319
    :goto_4
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 3050
    :cond_4
    :goto_5
    :try_start_9
    invoke-direct {p0}, Lcom/inca/security/Core/AppGuardEngine;->IIIIIIIlll()V

    .line 2065
    invoke-static {}, Lcom/inca/security/DexProtect/Binder;->getReserved1()Ljava/lang/Object;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result-object v0

    .line 1999
    if-eqz v0, :cond_8

    .line 2467
    :try_start_a
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 3002
    const-string v3, "*\"\n\u0002\n\"*\"*\u0002" #iIIiIIiIii

    invoke-static {v3}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 2258
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 2473
    :cond_5
    :goto_6
    const/4 v0, 0x0

    :try_start_b
    iput-boolean v0, p0, Lcom/inca/security/Core/AppGuardEngine;->IIIIiiIiiI:Z

    .line 2404
    monitor-exit v2

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    throw v0

    .line 3226
    :cond_6
    :try_start_c
    iget-object v0, p0, Lcom/inca/security/Core/AppGuardEngine;->iiiIiiiiII:Lcom/inca/security/ub;

    invoke-virtual {v0}, Lcom/inca/security/ub;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2288
    iget-object v0, p0, Lcom/inca/security/Core/AppGuardEngine;->iiiIiiiiII:Lcom/inca/security/ub;

    invoke-virtual {v0}, Lcom/inca/security/ub;->IIiIIiIiIi()V

    :cond_7
    move-object v0, v1

    .line 3319
    goto :goto_4

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :try_start_d
    throw v0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 2511
    :catch_0
    move-exception v0

    goto :goto_5

    .line 2359
    :cond_8
    :try_start_e
    invoke-static {}, Lcom/inca/security/DexProtect/Binder;->getABI()I

    move-result v0

    if-eqz v0, :cond_5

    .line 2184
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/inca/security/Core/AppGuardEngine;->IIiIiIIIiI(I)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_6

    .line 2589
    :catch_1
    move-exception v0

    goto :goto_6

    .line 2690
    :catch_2
    move-exception v0

    goto :goto_3

    .line 2624
    :catch_3
    move-exception v0

    goto/16 :goto_2

    .line 3336
    :catch_4
    move-exception v0

    goto/16 :goto_1
.end method

.method public IiiiIIIIii(I)V
    .locals 6
    .param p1, "arg0"    # I

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x1c

    .line 3041
    packed-switch p1, :pswitch_data_0

    .line 2625
    :cond_0
    :goto_0
    return-void

    .line 2767
    :pswitch_0
    iget-wide v0, p0, Lcom/inca/security/Core/AppGuardEngine;->IIiiiIIiII:J

    const-wide/32 v2, 0x8000000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 3194
    iget-object v0, p0, Lcom/inca/security/Core/AppGuardEngine;->IiIIIIIiII:[Z

    aget-boolean v0, v0, v4

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/inca/security/Core/AppGuardEngine;->IIiiiIIIIi:[Z

    aget-boolean v0, v0, v4

    if-eqz v0, :cond_0

    .line 3362
    :cond_1
    iget-object v0, p0, Lcom/inca/security/Core/AppGuardEngine;->IiIIIIIiII:[Z

    aput-boolean v5, v0, v4

    .line 2638
    iget-object v0, p0, Lcom/inca/security/Core/AppGuardEngine;->IIiiiIIIIi:[Z

    aput-boolean v5, v0, v4

    .line 2742
    iget-object v1, p0, Lcom/inca/security/Core/AppGuardEngine;->iIIIIIiIII:Ljava/lang/Object;

    monitor-enter v1

    .line 2499
    :try_start_0
    iget-boolean v0, p0, Lcom/inca/security/Core/AppGuardEngine;->IIIIiiIiiI:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    .line 2891
    :try_start_1
    iget-object v2, p0, Lcom/inca/security/Core/AppGuardEngine;->iiiIiiiiII:Lcom/inca/security/ub;

    monitor-enter v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2739
    :try_start_2
    iget-object v0, p0, Lcom/inca/security/Core/AppGuardEngine;->iiiIiiiiII:Lcom/inca/security/ub;

    invoke-virtual {v0}, Lcom/inca/security/ub;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2917
    iget-object v0, p0, Lcom/inca/security/Core/AppGuardEngine;->iiiIiiiiII:Lcom/inca/security/ub;

    invoke-virtual {v0}, Lcom/inca/security/ub;->IIiIIiIiIi()V

    .line 2327
    :cond_2
    new-instance v0, Lcom/inca/security/ub;

    iget-object v3, p0, Lcom/inca/security/Core/AppGuardEngine;->IIiIiIIIii:Lcom/inca/security/Core/WeakRefHandler;

    invoke-direct {v0, v3}, Lcom/inca/security/ub;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/inca/security/Core/AppGuardEngine;->iiiIiiiiII:Lcom/inca/security/ub;

    .line 3353
    iget-object v0, p0, Lcom/inca/security/Core/AppGuardEngine;->iiiIiiiiII:Lcom/inca/security/ub;

    invoke-virtual {v0}, Lcom/inca/security/ub;->start()V

    .line 2159
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2625
    :cond_3
    :goto_1
    :try_start_3
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 2159
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 3396
    :catch_0
    move-exception v0

    goto :goto_1

    .line 3041
    nop

    :pswitch_data_0
    .packed-switch 0x10000000
        :pswitch_0
    .end packed-switch
.end method

.method public IiiiIIIIii(Landroid/content/Context;I)V
    .locals 12
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2194
    .line 3146
    packed-switch p2, :pswitch_data_0

    .line 3260
    :cond_0
    :goto_0
    new-instance v1, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\"cdmhajfcj#|bw" #/libengine.sox

    invoke-static {v5}, Lcom/inca/security/n;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2544
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3294
    const/16 v0, 0x10

    :try_start_0
    new-array v6, v0, [B

    .line 2363
    const/16 v0, 0x10

    new-array v7, v0, [B

    .line 2015
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    const-string v9, "\n3\u001b$\u001e\"\u0019\'D" #appguard/

    invoke-static {v9}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v8, Lcom/inca/security/Core/AppGuardEngine;->IIIiIIiiii:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "\"cdmhajfcj#|bw" #/libengine.sox

    invoke-static {v8}, Lcom/inca/security/n;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_d
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v5

    .line 2805
    :try_start_1
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_e
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v8, 0x6

    .line 2097
    :try_start_2
    invoke-virtual {v5, v6}, Ljava/io/InputStream;->read([B)I

    .line 3318
    invoke-virtual {v0, v7}, Ljava/io/InputStream;->read([B)I

    .line 2831
    invoke-static {v6, v8}, Lcom/inca/security/va;->iIiIIiIIIi([BI)I

    move-result v8

    const/4 v9, 0x6

    invoke-static {v7, v9}, Lcom/inca/security/va;->iIiIIiIIIi([BI)I

    move-result v9

    if-eq v8, v9, :cond_1

    .line 2526
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 3056
    new-instance v6, Ljava/lang/Exception;

    invoke-direct {v6}, Ljava/lang/Exception;-><init>()V

    throw v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2766
    :catch_0
    move-exception v6

    .line 3311
    :goto_1
    if-eqz v0, :cond_5

    .line 2900
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    move-object v0, v5

    .line 3348
    :goto_2
    if-eqz v0, :cond_7

    .line 1955
    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    move-object v0, v1

    .line 3070
    :goto_3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_14

    .line 2246
    :try_start_5
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    const-string v7, "\n3\u001b$\u001e\"\u0019\'D" #appguard/

    invoke-static {v7}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/inca/security/Core/AppGuardEngine;->IIIiIIiiii:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\"cdmhajfcj#|bw" #/libengine.sox

    invoke-static {v6}, Lcom/inca/security/n;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    move-result-object v0

    move-object v5, v0

    .line 2969
    :goto_4
    if-eqz v0, :cond_9

    .line 2931
    :try_start_6
    const-string v0, "cdmhajfcj#|bw" #libengine.sox

    invoke-static {v0}, Lcom/inca/security/n;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    invoke-virtual {p1, v0, v6}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v6

    .line 3004
    const/16 v0, 0x1000

    new-array v7, v0, [B

    move-object v0, v5

    .line 2121
    :goto_5
    invoke-virtual {v0, v7}, Ljava/io/InputStream;->read([B)I

    move-result v0

    if-lez v0, :cond_8

    .line 3210
    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8, v0}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    move-object v0, v5

    goto :goto_5

    .line 2167
    :pswitch_0
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const-string v1, "x86"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 2093
    const-string v0, "x86"

    sput-object v0, Lcom/inca/security/Core/AppGuardEngine;->IIIiIIiiii:Ljava/lang/String;

    goto/16 :goto_0

    .line 3249
    :pswitch_1
    const-string v0, "armeabi"

    sput-object v0, Lcom/inca/security/Core/AppGuardEngine;->IIIiIIiiii:Ljava/lang/String;

    goto/16 :goto_0

    .line 3282
    :pswitch_2
    const-string v0, "x86"

    sput-object v0, Lcom/inca/security/Core/AppGuardEngine;->IIIiIIiiii:Ljava/lang/String;

    goto/16 :goto_0

    .line 1967
    :cond_1
    const/16 v8, 0xa

    :try_start_7
    invoke-static {v6, v8}, Lcom/inca/security/va;->iIiIIiIIIi([BI)I

    move-result v6

    const/16 v8, 0xa

    invoke-static {v7, v8}, Lcom/inca/security/va;->iIiIIiIIIi([BI)I

    move-result v7

    if-le v6, v7, :cond_3

    .line 2548
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 2787
    new-instance v6, Ljava/lang/Exception;

    invoke-direct {v6}, Ljava/lang/Exception;-><init>()V

    throw v6
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 3311
    :catchall_0
    move-exception v1

    move-object v4, v0

    move-object v0, v1

    :goto_6
    if-eqz v4, :cond_6

    .line 2900
    :try_start_8
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    move-object v1, v5

    .line 3348
    :goto_7
    if-eqz v1, :cond_2

    .line 1955
    :try_start_9
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_c

    .line 2034
    :cond_2
    :goto_8
    throw v0

    .line 3311
    :cond_3
    if-eqz v0, :cond_4

    .line 2900
    :try_start_a
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    move-object v0, v5

    .line 3348
    :goto_9
    if-eqz v0, :cond_7

    .line 1955
    :try_start_b
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    move-object v0, v1

    .line 2034
    goto/16 :goto_3

    .line 2557
    :catch_1
    move-exception v0

    :cond_4
    move-object v0, v5

    .line 3348
    goto :goto_9

    .line 2089
    :catch_2
    move-exception v0

    move-object v0, v1

    .line 2034
    goto/16 :goto_3

    .line 2557
    :catch_3
    move-exception v0

    :cond_5
    move-object v0, v5

    .line 3348
    goto/16 :goto_2

    .line 2089
    :catch_4
    move-exception v0

    move-object v0, v1

    .line 2034
    goto/16 :goto_3

    .line 2557
    :catch_5
    move-exception v1

    :cond_6
    move-object v1, v5

    .line 3348
    goto :goto_7

    :cond_7
    move-object v0, v1

    .line 3070
    goto/16 :goto_3

    .line 2296
    :catch_6
    move-exception v0

    .line 2350
    const-string v0, "\"\u00180\u000e7\u0018l\n3\u001b$\u001e\"\u0019\'Df\u0018l\u0007*\t&\u0005$\u0002-\u000em\u0018,\u0013" #assets/appguard/%s/libengine.sox

    invoke-static {v0}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v5, v2, [Ljava/lang/Object;

    sget-object v6, Lcom/inca/security/Core/AppGuardEngine;->IIIiIIiiii:Ljava/lang/String;

    aput-object v6, v5, v3

    .line 2571
    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inca/security/ua;->IiiiIIIIii(Ljava/lang/String;)[B

    move-result-object v0

    .line 1950
    iget-object v5, p0, Lcom/inca/security/Core/AppGuardEngine;->IIiiiiiIIi:Lcom/inca/security/Core/AppGuardEngine;

    invoke-virtual {v5, v10, v11, v0}, Lcom/inca/security/Core/AppGuardEngine;->conditionCallback(II[B)V

    .line 2082
    new-instance v0, Lcom/inca/security/td;

    invoke-direct {v0, p0}, Lcom/inca/security/td;-><init>(Lcom/inca/security/Core/AppGuardEngine;)V

    .line 3040
    invoke-virtual {v0}, Lcom/inca/security/td;->start()V

    move-object v0, v4

    move-object v5, v4

    .line 2969
    goto/16 :goto_4

    .line 2084
    :cond_8
    :try_start_c
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 2823
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    :cond_9
    move v0, v2

    .line 2413
    :goto_a
    new-instance v6, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "l\u0007*\t0\u001f6\tm\u0018,\u0013" #/libstub.sox

    invoke-static {v5}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2764
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_a

    if-ne v0, v2, :cond_d

    .line 2493
    :cond_a
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2524
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 3013
    :cond_b
    :try_start_d
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    const-string v8, "n}\u007fjzl}i " #appguard/

    invoke-static {v8}, Lcom/inca/security/n;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v7, Lcom/inca/security/Core/AppGuardEngine;->IIIiIIiiii:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "l\u0007*\t0\u001f6\tm\u0018,\u0013" #/libstub.sox

    invoke-static {v7}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8

    move-result-object v1

    move-object v5, v1

    .line 3392
    :goto_b
    if-eqz v1, :cond_d

    .line 2835
    :try_start_e
    const-string v1, "\u0007*\t0\u001f6\tm\u0018,\u0013" #libstub.sox

    invoke-static {v1}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x0

    invoke-virtual {p1, v1, v7}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v7

    .line 2692
    const/16 v1, 0x1000

    new-array v8, v1, [B

    move-object v1, v5

    .line 2240
    :goto_c
    invoke-virtual {v1, v8}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_c

    .line 2705
    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_9

    move-object v1, v5

    goto :goto_c

    .line 2392
    :catch_7
    move-exception v0

    .line 2576
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 2530
    throw v0

    .line 3236
    :catch_8
    move-exception v1

    .line 2750
    const-string v1, "l|~jy|\"n}\u007fjzl}i (|\"cdm~{xm#|bw" #assets/appguard/%s/libstub.sox

    invoke-static {v1}, Lcom/inca/security/n;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v5, v2, [Ljava/lang/Object;

    sget-object v7, Lcom/inca/security/Core/AppGuardEngine;->IIIiIIiiii:Ljava/lang/String;

    aput-object v7, v5, v3

    .line 3252
    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inca/security/ua;->IiiiIIIIii(Ljava/lang/String;)[B

    move-result-object v1

    .line 2177
    iget-object v5, p0, Lcom/inca/security/Core/AppGuardEngine;->IIiiiiiIIi:Lcom/inca/security/Core/AppGuardEngine;

    invoke-virtual {v5, v10, v11, v1}, Lcom/inca/security/Core/AppGuardEngine;->conditionCallback(II[B)V

    .line 2477
    new-instance v1, Lcom/inca/security/eh;

    invoke-direct {v1, p0}, Lcom/inca/security/eh;-><init>(Lcom/inca/security/Core/AppGuardEngine;)V

    .line 3019
    invoke-virtual {v1}, Lcom/inca/security/eh;->start()V

    move-object v1, v4

    move-object v5, v4

    .line 3392
    goto :goto_b

    .line 3343
    :cond_c
    :try_start_f
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 2317
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_9

    .line 2845
    :cond_d
    new-instance v5, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v3, v6}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " x\u007finyj#kl{" #/update.dat

    invoke-static {v6}, Lcom/inca/security/n;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3091
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_e

    if-ne v0, v2, :cond_11

    .line 2033
    :cond_e
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 3102
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 3438
    :cond_f
    :try_start_10
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "\n3\u001b$\u001e\"\u0019\'D6\u001b\'\n7\u000em\u000f\"\u001f" #appguard/update.dat

    invoke-static {v1}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_a

    move-result-object v0

    move-object v1, v0

    .line 3057
    :goto_d
    if-eqz v0, :cond_11

    .line 3310
    :try_start_11
    const-string v0, "update.dat"

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    .line 2801
    const/16 v0, 0x1000

    new-array v6, v0, [B

    move-object v0, v1

    .line 2329
    :goto_e
    invoke-virtual {v0, v6}, Ljava/io/InputStream;->read([B)I

    move-result v0

    if-lez v0, :cond_10

    .line 2697
    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7, v0}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_b

    move-object v0, v1

    goto :goto_e

    .line 2806
    :catch_9
    move-exception v0

    .line 3431
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 2273
    throw v0

    .line 3081
    :catch_a
    move-exception v0

    .line 3170
    const-string v0, "l|~jy|\"n}\u007fjzl}i x\u007finyj#kl{" #assets/appguard/update.dat

    invoke-static {v0}, Lcom/inca/security/n;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    sget-object v6, Lcom/inca/security/Core/AppGuardEngine;->IIIiIIiiii:Ljava/lang/String;

    aput-object v6, v1, v3

    .line 3419
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inca/security/ua;->IiiiIIIIii(Ljava/lang/String;)[B

    move-result-object v0

    .line 2069
    iget-object v1, p0, Lcom/inca/security/Core/AppGuardEngine;->IIiiiiiIIi:Lcom/inca/security/Core/AppGuardEngine;

    invoke-virtual {v1, v10, v11, v0}, Lcom/inca/security/Core/AppGuardEngine;->conditionCallback(II[B)V

    .line 2643
    new-instance v0, Lcom/inca/security/ho;

    invoke-direct {v0, p0}, Lcom/inca/security/ho;-><init>(Lcom/inca/security/Core/AppGuardEngine;)V

    .line 2365
    invoke-virtual {v0}, Lcom/inca/security/ho;->start()V

    move-object v0, v4

    move-object v1, v4

    .line 3057
    goto :goto_d

    .line 2051
    :cond_10
    :try_start_12
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 2399
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_b

    .line 2521
    :cond_11
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\u0007*\t&\u0005$\u0002-\u000em\u0018,\u0013" #libengine.sox

    invoke-static {v3}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_12

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2085
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "cdm~{xm#|bw" #libstub.sox

    invoke-static {v3}, Lcom/inca/security/n;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_13

    .line 2974
    :cond_12
    iget-object v0, p0, Lcom/inca/security/Core/AppGuardEngine;->IIiiiiiIIi:Lcom/inca/security/Core/AppGuardEngine;

    const/16 v1, 0x9

    invoke-virtual {v0, v2, v1, v4}, Lcom/inca/security/Core/AppGuardEngine;->conditionCallback(II[B)V

    .line 3071
    new-instance v0, Lcom/inca/security/od;

    invoke-direct {v0, p0}, Lcom/inca/security/od;-><init>(Lcom/inca/security/Core/AppGuardEngine;)V

    .line 2380
    invoke-virtual {v0}, Lcom/inca/security/od;->start()V

    .line 1997
    :cond_13
    return-void

    .line 3172
    :catch_b
    move-exception v0

    .line 2545
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 2713
    throw v0

    .line 2089
    :catch_c
    move-exception v1

    goto/16 :goto_8

    .line 3311
    :catchall_1
    move-exception v0

    move-object v5, v4

    goto/16 :goto_6

    :catchall_2
    move-exception v0

    goto/16 :goto_6

    .line 2766
    :catch_d
    move-exception v0

    move-object v0, v4

    move-object v5, v4

    goto/16 :goto_1

    :catch_e
    move-exception v0

    move-object v0, v4

    goto/16 :goto_1

    :cond_14
    move v0, v3

    goto/16 :goto_a

    .line 3146
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public IiiiIIIIii(Landroid/os/Handler;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 2
    .param p1, "arg0"    # Landroid/os/Handler;
    .param p2, "arg1"    # Landroid/os/Handler;
    .param p3, "arg2"    # Landroid/os/Handler;

    .prologue
    .line 2783
    iput-object p1, p0, Lcom/inca/security/Core/AppGuardEngine;->IiIiIiIiII:Landroid/os/Handler;

    .line 2289
    iput-object p2, p0, Lcom/inca/security/Core/AppGuardEngine;->iIiiiiiIIi:Landroid/os/Handler;

    .line 3174
    iput-object p3, p0, Lcom/inca/security/Core/AppGuardEngine;->iiiIIiIiiI:Landroid/os/Handler;

    .line 3079
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/inca/security/jf;

    invoke-direct {v1, p0}, Lcom/inca/security/jf;-><init>(Lcom/inca/security/Core/AppGuardEngine;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 2179
    return-void
.end method

.method public IiiiIIIIii(Landroid/os/Message;)V
    .locals 7
    .param p1, "arg0"    # Landroid/os/Message;

    .prologue
    const/16 v5, 0x15

    const/4 v4, 0x0

    .line 1089
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1456
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1164
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 1199
    :pswitch_2
    const/16 v0, 0xa

    :try_start_0
    iget v1, p1, Landroid/os/Message;->arg2:I

    if-ne v0, v1, :cond_0

    .line 1332
    const-string v0, "\u007f\t}W%\u0004-\u001fc\u0008,\u0007,\u0019~H\u0005-zSs[}%,\u001fc\u000e-\u00046\u000c+K0\u001b\"\u0008&K*\u0005c\u0018:\u00187\u000e.K0\u001f,\u0019\"\u000c&Ec*7K/\u000e\"\u00187Kq&\u0001K,\rc\r1\u000e&K0\u001b\"\u0008&K*\u0018c\u0019&\u001a6\u00021\u000e\'K7\u0004c\u000e;\u000e \u001e7\u000emWl\r,\u00057U\u007fD!U" #<b><font color=#FF9800>Not enough space in system storage. At least 2MB of free space is required to execute.</font></b>

    invoke-static {v0}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    .line 1508
    invoke-static {}, Lcom/inca/security/Proxy/JNISoxProxy;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v2, "F]" #KR

    invoke-static {v2}, Lcom/inca/security/n;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    .line 1395
    const-string v0, "W!U\u007f\r,\u00057K \u0004/\u00041V`-\u0005R{[sU\uc2a7\ud5e2\uc707K\uc747\ud51f\uc15f\ub2ffc\uc2b7\uc2e7\ud137c\uc2cf\ud1e3\ub9c7\uc983\uc5bbc\ucd37\uc1cf\ud537cY\u000e)\uc71bK\ub0eb\uc72bc\uac9e\uac47\uc71fc\ud52f\uc6d7\ud502\ub28b\ub28fmWl\r,\u00057U\u007fD!U" #<b><font color=#FF9800>실행을 위해서는 시스템 스토리지에 최소한 2MB의 남은 공간이 필요합니다.</font></b>

    invoke-static {v0}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    .line 503
    :cond_1
    :goto_1
    const-string v1, "lai}bfi!l\u007f}!]}bh\u007fj~|Iflcbh" #android.app.ProgressDialog

    invoke-static {v1}, Lcom/inca/security/n;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 1485
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    .line 1553
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 1491
    const/4 v3, 0x1

    .line 1079
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Lcom/inca/security/Proxy/JNISoxProxy;->getContext()Landroid/content/Context;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1344
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1306
    const-string v3, "0\u000e7&&\u00180\n$\u000e" #setMessage

    invoke-static {v3}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/CharSequence;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 1255
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    const-string v0, "|h{Nnclhclmaj" #setCancelable

    invoke-static {v0}, Lcom/inca/security/n;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 583
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    const-string v0, "\u0018&\u001f\u0001\u001e7\u001f,\u0005" #setButton

    invoke-static {v0}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/CharSequence;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/content/DialogInterface$OnClickListener;

    aput-object v5, v3, v4

    invoke-virtual {v1, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 723
    new-instance v3, Lcom/inca/security/ee;

    invoke-direct {v3, p0}, Lcom/inca/security/ee;-><init>(Lcom/inca/security/Core/AppGuardEngine;)V

    .line 1032
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "BD" #OK

    invoke-static {v6}, Lcom/inca/security/n;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v3, v4, v5

    invoke-virtual {v0, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1113
    const-string v0, "0\u0003,\u001c" #show

    invoke-static {v0}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1476
    new-instance v0, Lcom/inca/security/sl;

    invoke-direct {v0, p0}, Lcom/inca/security/sl;-><init>(Lcom/inca/security/Core/AppGuardEngine;)V

    .line 1186
    invoke-virtual {v0}, Lcom/inca/security/sl;->start()V

    .line 510
    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1190
    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 1028
    :cond_2
    invoke-static {}, Lcom/inca/security/Proxy/JNISoxProxy;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NA" #CN

    invoke-static {v2}, Lcom/inca/security/n;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    .line 1216
    const-string v0, "\u007f\t}W%\u0004-\u001fc\u0008,\u0007,\u0019~H\u0005-zSs[}\u7c90\u7e9c\u50c3\u5b1b\u7a11\u95b7\u4e66\u8df0\uff67\u8bb4\u6e6e\u7445\u7a11\u95b7\u51e6\u6b62\u5c76\u8b96\u3069\u6743\u5c7a\u89c2Y\u000e)\u3041Wl\r,\u00057U\u007fD!U" #<b><font color=#FF9800>系统储存空间不足，请清理空间再次尝试。最少要2MB。</font></b>

    invoke-static {v0}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    goto/16 :goto_1

    .line 1001
    :cond_3
    invoke-static {}, Lcom/inca/security/Proxy/JNISoxProxy;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v2, "YX" #TW

    invoke-static {v2}, Lcom/inca/security/n;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_4

    .line 1543
    const-string v0, "\u007f\t}W%\u0004-\u001fc\u0008,\u0007,\u0019~H\u0005-zSs[}\u7c90\u7d32\u5159\u5b1b\u7a11\u95d0\u4e66\u8df0\uff67\u8a88\u6e6e\u7445\u7a11\u95d0\u51e6\u6b62\u567c\u8a25\u3069\u6743\u5c7a\u89c2Y\u000e)\u3041Wl\r,\u00057U\u007fD!U" #<b><font color=#FF9800>系統儲存空間不足，請清理空間再次嘗試。最少要2MB。</font></b>

    invoke-static {v0}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    goto/16 :goto_1

    .line 558
    :cond_4
    invoke-static {}, Lcom/inca/security/Proxy/JNISoxProxy;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v2, "G_" #JP

    invoke-static {v2}, Lcom/inca/security/n;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 1300
    const-string v0, "\u007f\t}W%\u0004-\u001fc\u0008,\u0007,\u0019~H\u0005-zSs[}\u5bf4\u880f\u3005\u301c\u30ea\u3028\u3004\u3042\u30dc\u30fa\u30ad\u30a3\u3005\u30fa\u30a3\u30af\u3097\u30fb\u3000\u5c52\u3001\u300c\u3003\u30c1Y\u000e)\u302d\u7a11\u300e\u5bd2\u918c\u3027\u5f86\u89ea\u3024\u3032\u3041Wl\r,\u00057U\u007fD!U" #<b><font color=#FF9800>実行のためには、システムのストレージに少なくとも2MBの空き容量が必要です。</font></b>

    invoke-static {v0}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto/16 :goto_1

    .line 1052
    :pswitch_3
    new-instance v0, Lcom/inca/security/qc;

    invoke-direct {v0, p0, v4}, Lcom/inca/security/qc;-><init>(Lcom/inca/security/Core/AppGuardEngine;Lcom/inca/security/ee;)V

    iput-object v0, p0, Lcom/inca/security/Core/AppGuardEngine;->IiIIIiIIIi:Lcom/inca/security/qc;

    .line 941
    iget-object v0, p0, Lcom/inca/security/Core/AppGuardEngine;->IiIIIiIIIi:Lcom/inca/security/qc;

    invoke-virtual {v0}, Lcom/inca/security/qc;->start()V

    goto/16 :goto_0

    .line 1299
    :pswitch_4
    iget-wide v0, p0, Lcom/inca/security/Core/AppGuardEngine;->IIiiiIIiII:J

    const-wide/16 v2, 0x800

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1295
    new-instance v0, Lcom/inca/security/dc;

    invoke-direct {v0, p0, v4}, Lcom/inca/security/dc;-><init>(Lcom/inca/security/Core/AppGuardEngine;Lcom/inca/security/ee;)V

    iput-object v0, p0, Lcom/inca/security/Core/AppGuardEngine;->IiIIIIiIIi:Lcom/inca/security/dc;

    .line 991
    iget-object v0, p0, Lcom/inca/security/Core/AppGuardEngine;->IiIIIIiIIi:Lcom/inca/security/dc;

    invoke-virtual {v0}, Lcom/inca/security/dc;->start()V

    goto/16 :goto_0

    .line 901
    :pswitch_5
    iget-wide v0, p0, Lcom/inca/security/Core/AppGuardEngine;->IIiiiIIiII:J

    const-wide/32 v2, 0x8000000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 689
    :try_start_1
    iget-object v1, p0, Lcom/inca/security/Core/AppGuardEngine;->iiiIiiiiII:Lcom/inca/security/ub;

    monitor-enter v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1468
    :try_start_2
    iget-boolean v0, p0, Lcom/inca/security/Core/AppGuardEngine;->iiiIiiIiIi:Z

    if-eqz v0, :cond_6

    .line 820
    iget-object v0, p0, Lcom/inca/security/Core/AppGuardEngine;->iiiIiiiiII:Lcom/inca/security/ub;

    invoke-virtual {v0}, Lcom/inca/security/ub;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v2, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    if-ne v0, v2, :cond_5

    .line 872
    iget-object v0, p0, Lcom/inca/security/Core/AppGuardEngine;->iiiIiiiiII:Lcom/inca/security/ub;

    invoke-virtual {v0}, Lcom/inca/security/ub;->start()V

    move-object v0, v1

    .line 1385
    :goto_2
    monitor-exit v0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 1354
    :catch_1
    move-exception v0

    goto/16 :goto_0

    .line 1092
    :cond_5
    :try_start_4
    iget-object v0, p0, Lcom/inca/security/Core/AppGuardEngine;->iiiIiiiiII:Lcom/inca/security/ub;

    invoke-virtual {v0}, Lcom/inca/security/ub;->iIiIIiIIIi()V

    move-object v0, v1

    goto :goto_2

    .line 1373
    :cond_6
    iget-object v0, p0, Lcom/inca/security/Core/AppGuardEngine;->iiiIiiiiII:Lcom/inca/security/ub;

    invoke-virtual {v0}, Lcom/inca/security/ub;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v2, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    if-ne v0, v2, :cond_7

    .line 1269
    iget-object v0, p0, Lcom/inca/security/Core/AppGuardEngine;->iiiIiiiiII:Lcom/inca/security/ub;

    invoke-virtual {v0}, Lcom/inca/security/ub;->start()V

    move-object v0, v1

    goto :goto_2

    .line 1195
    :cond_7
    iget-object v0, p0, Lcom/inca/security/Core/AppGuardEngine;->iiiIiiiiII:Lcom/inca/security/ub;

    invoke-virtual {v0}, Lcom/inca/security/ub;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v2, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-ne v0, v2, :cond_8

    .line 1572
    new-instance v0, Lcom/inca/security/ub;

    iget-object v2, p0, Lcom/inca/security/Core/AppGuardEngine;->IIiIiIIIii:Lcom/inca/security/Core/WeakRefHandler;

    invoke-direct {v0, v2}, Lcom/inca/security/ub;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/inca/security/Core/AppGuardEngine;->iiiIiiiiII:Lcom/inca/security/ub;

    .line 1440
    iget-object v0, p0, Lcom/inca/security/Core/AppGuardEngine;->iiiIiiiiII:Lcom/inca/security/ub;

    invoke-virtual {v0}, Lcom/inca/security/ub;->start()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_8
    move-object v0, v1

    .line 1385
    goto :goto_2

    .line 1072
    :pswitch_6
    :try_start_5
    iget-boolean v0, p0, Lcom/inca/security/Core/AppGuardEngine;->IiiIiIIiII:Z

    if-nez v0, :cond_f

    .line 1067
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inca/security/Core/AppGuardEngine;->IiiIiIIiII:Z

    .line 1313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const-string v2, "1m33k`c{-lbcb}0,KI47=?3[ef~/l\u007f}/zfac-mh/yj\u007fbdal{hk-mhllz~j-n-|hlx}d{t/}`afnv-yd`anyfba-gl|-mhjc/ijyjn{hk,/" #<b><font color=#FF9800>This app will be terminated because a security policy violation has been detected! 

    invoke-static {v2}, Lcom/inca/security/n;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "0\u0000\u0004\'\u000eyNsS\'6" #[Code:%08d]

    invoke-static {v1}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 528
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "3\"ibay11 o1" #</font></b>

    invoke-static {v1}, Lcom/inca/security/n;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1313
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    .line 617
    invoke-static {}, Lcom/inca/security/Proxy/JNISoxProxy;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u00089" #KR

    invoke-static {v2}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_a

    .line 1031
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const-string v2, "3o11ibay/n`a`\u007f2.IK65?=1\ubcf9\uc547-\uc81a\ucc48/\uc709\ubc17\uc779/\ud0dd\uc9cf\ub415\uc5bb-\ud60b\uc7a1/\uc57c\uc74b-\uac1a\uc811/\uc888\ub8c3\ud564\ub2c7\ub2e9!" #<b><font color=#FF9800>보안 정책 위반이 탐지되어 현재 앱을 강제 종료합니다.

    invoke-static {v2}, Lcom/inca/security/n;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "0\u0000\u0004\'\u000eyNsS\'6" #[Code:%08d]

    invoke-static {v1}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 1375
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "3\"ibay11 o1" #</font></b>

    invoke-static {v1}, Lcom/inca/security/n;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1031
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    .line 1174
    :cond_9
    :goto_3
    const-string v1, "\"\u0005\'\u0019,\u0002\'E\"\u001b3E\u0013\u0019,\u000c1\u000e0\u0018\u0007\u0002\"\u0007,\u000c" #android.app.ProgressDialog

    invoke-static {v1}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 1436
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    .line 1201
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 1541
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Lcom/inca/security/Proxy/JNISoxProxy;->getContext()Landroid/content/Context;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1392
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 619
    const-string v3, "~jyBh|~njj" #setMessage

    invoke-static {v3}, Lcom/inca/security/n;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/CharSequence;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 740
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1420
    const-string v0, "\u0018&\u001f\u0000\n-\u0008&\u0007\"\t/\u000e" #setCancelable

    invoke-static {v0}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 586
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    const-string v0, "|h{Ozy{ba" #setButton

    invoke-static {v0}, Lcom/inca/security/n;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/CharSequence;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/content/DialogInterface$OnClickListener;

    aput-object v5, v3, v4

    invoke-virtual {v1, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 952
    new-instance v3, Lcom/inca/security/aj;

    invoke-direct {v3, p0}, Lcom/inca/security/aj;-><init>(Lcom/inca/security/Core/AppGuardEngine;)V

    .line 1442
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "\u000c " #OK

    invoke-static {v6}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v3, v4, v5

    invoke-virtual {v0, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1521
    const-string v0, "~gbx" #show

    invoke-static {v0}, Lcom/inca/security/n;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1178
    new-instance v0, Lcom/inca/security/kc;

    invoke-direct {v0, p0}, Lcom/inca/security/kc;-><init>(Lcom/inca/security/Core/AppGuardEngine;)V

    .line 971
    invoke-virtual {v0}, Lcom/inca/security/kc;->start()V

    .line 812
    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1096
    :catch_2
    move-exception v0

    goto/16 :goto_0

    .line 1062
    :cond_a
    invoke-static {}, Lcom/inca/security/Proxy/JNISoxProxy;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u0000%" #CN

    invoke-static {v2}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_c

    .line 773
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "\u68cd\u6d44\u523d\u5f0d\u5e35\uff03\u8fd0\u53c2\u5b84\u5167\u7b5b\u756a\u300fTN`ij7*=7iR" #检测到异常，违反安全策略。[Code:%08d]

    invoke-static {v1}, Lcom/inca/security/n;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 618
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v5, :cond_b

    .line 1565
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u007f\t1U\u8bb4\u524b\u9627\u9735\u6c96\u8fee\u52ea\u7a60\u5ecc\u5465\u51ce\u91a6\u65f3\u8fb0\u5126\u6e53\u624c\uff67\u59c1\u6762\u75d2\u9585\u8bb4\u803f\u7cb8\u5bc9\u674e\u3069" #<br>请删除非法辅助程序后再重新进入游戏，如有疑问请联系客服。

    invoke-static {v1}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 639
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const-string v3, "3o11ibay/n`a`\u007f2.IK65?=1" #<b><font color=#FF9800>

    invoke-static {v3}, Lcom/inca/security/n;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Wl\r,\u00057U\u007fD!U" #</font></b>

    invoke-static {v1}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    goto/16 :goto_3

    .line 1551
    :cond_c
    invoke-static {}, Lcom/inca/security/Proxy/JNISoxProxy;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v2, "YX" #TW

    invoke-static {v2}, Lcom/inca/security/n;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_e

    .line 576
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "\u6ae1\u6e47\u5273\u751b\u5e7b\uff67\u9016\u53a6\u5bca\u5103\u7b15\u750e\u30410\u0000\u0004\'\u000eyNsS\'6" #檢測到異常，違反安全策略。[Code:%08d]

    invoke-static {v1}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1535
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v5, :cond_d

    .line 1259
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "1m\u007f1\u8ac6\u5225\u9669\u5919\u6396\u7a04\u5f02\u5401\u5180\u91c2\u65bd\u903d\u5168\u9045\u623f\uff03\u598f\u6706\u759c\u5540\u8ac6\u8060\u7e66\u5bad\u6700\u300d" #<br>請刪除外掛程式后再重新進入遊戲，如有疑問請聯繫客服。

    invoke-static {v1}, Lcom/inca/security/n;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1177
    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const-string v3, "W!U\u007f\r,\u00057K \u0004/\u00041V`-\u0005R{[sU" #<b><font color=#FF9800>

    invoke-static {v3}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "3\"ibay11 o1" #</font></b>

    invoke-static {v1}, Lcom/inca/security/n;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    goto/16 :goto_3

    .line 1185
    :cond_e
    invoke-static {}, Lcom/inca/security/Proxy/JNISoxProxy;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\t;" #JP

    invoke-static {v2}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_9

    .line 976
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const-string v2, "3o11ibay/n`a`\u007f2.IK65?=1\u30b6\u30a2\u30e8\u30e5\u30cb\u30ac\u30f1\u3061\u30d0\u30e5\u30ba\u30f3\u9058\u53c2\u3041\u63ad\u77e8\u305a\u3081\u3050\u3052\u308e\u300c\u30ad\u30da\u30e5\u30bc\u30f3\u30ba\u30e8\u30fe\u309d\u7d4f\u4e89\u305a\u3071\u3054\u300d" #<b><font color=#FF9800>セキュリティーのポリシー違反が探知されたため、アプリケーションを終了します。

    invoke-static {v2}, Lcom/inca/security/n;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "0\u0000\u0004\'\u000eyNsS\'6" #[Code:%08d]

    invoke-static {v1}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 934
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "3\"ibay11 o1" #</font></b>

    invoke-static {v1}, Lcom/inca/security/n;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 976
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    goto/16 :goto_3

    .line 876
    :cond_f
    new-instance v0, Lcom/inca/security/tc;

    invoke-direct {v0, p0}, Lcom/inca/security/tc;-><init>(Lcom/inca/security/Core/AppGuardEngine;)V

    .line 879
    invoke-virtual {v0}, Lcom/inca/security/tc;->start()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    .line 620
    :pswitch_7
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    invoke-virtual {p0, v1, v2, v0}, Lcom/inca/security/Core/AppGuardEngine;->conditionCallback(II[B)V

    goto/16 :goto_0

    .line 1089
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 1164
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public IiiiIIIIii(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/MotionEvent;

    .prologue
    .line 3135
    iget-object v0, p0, Lcom/inca/security/Core/AppGuardEngine;->iiiIiiiiII:Lcom/inca/security/ub;

    invoke-virtual {v0, p1}, Lcom/inca/security/ub;->IiiiIIIIii(Landroid/view/MotionEvent;)V

    .line 2606
    return-void
.end method

.method public IiiiIIIIii(Lcom/inca/security/AppGuard/AppGuardEventListener;)V
    .locals 2
    .param p1, "arg0"    # Lcom/inca/security/AppGuard/AppGuardEventListener;

    .prologue
    .line 3275
    iput-object p1, p0, Lcom/inca/security/Core/AppGuardEngine;->iiiIIIiiII:Lcom/inca/security/AppGuard/AppGuardEventListener;

    .line 2206
    iget-object v0, p0, Lcom/inca/security/Core/AppGuardEngine;->iiiIIIiiII:Lcom/inca/security/AppGuard/AppGuardEventListener;

    if-eqz v0, :cond_0

    .line 2711
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/inca/security/rg;

    invoke-direct {v1, p0}, Lcom/inca/security/rg;-><init>(Lcom/inca/security/Core/AppGuardEngine;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 2547
    :cond_0
    return-void
.end method

.method public IiiiIIIIii(Lcom/inca/security/uc;)V
    .locals 0
    .param p1, "arg0"    # Lcom/inca/security/uc;

    .prologue
    .line 2092
    iput-object p1, p0, Lcom/inca/security/Core/AppGuardEngine;->iiiiIIIiii:Lcom/inca/security/uc;

    .line 2263
    return-void
.end method

.method public IiiiIIIIii(Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 2821
    invoke-static {p1}, Lcom/inca/security/AppGuard/AppGuardUserInfo;->setUserId(Ljava/lang/String;)V

    .line 2779
    return-void
.end method

.method public IiiiIIIIii(Ljava/lang/String;I)V
    .locals 2
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # I

    .prologue
    .line 2316
    sget-object v0, Lcom/inca/security/Core/AppGuardEngine;->IIIiiIIiii:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2938
    sput-object p1, Lcom/inca/security/Core/AppGuardEngine;->IIIiiIIiii:Ljava/lang/String;

    .line 3254
    iget-object v0, p0, Lcom/inca/security/Core/AppGuardEngine;->IIIiIiiiII:Lcom/inca/security/nc;

    invoke-virtual {v0, p2}, Lcom/inca/security/nc;->IiiiIIIIii(I)V

    :goto_0
    return-void

    .line 2733
    :cond_0
    sget-object v0, Lcom/inca/security/Core/AppGuardEngine;->IIIiiIIiii:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 2857
    sput-object p1, Lcom/inca/security/Core/AppGuardEngine;->IIIiiIIiii:Ljava/lang/String;

    .line 2814
    :cond_1
    iget-object v1, p0, Lcom/inca/security/Core/AppGuardEngine;->IIiiiiiIIi:Lcom/inca/security/Core/AppGuardEngine;

    monitor-enter v1

    .line 2425
    :try_start_0
    iget-object v0, p0, Lcom/inca/security/Core/AppGuardEngine;->IIIiIiiiII:Lcom/inca/security/nc;

    if-eqz v0, :cond_2

    .line 2267
    iget-object v0, p0, Lcom/inca/security/Core/AppGuardEngine;->IIIiIiiiII:Lcom/inca/security/nc;

    invoke-virtual {v0}, Lcom/inca/security/nc;->IiiiIIIIii()V

    .line 2408
    iget-object v0, p0, Lcom/inca/security/Core/AppGuardEngine;->IIIiIiiiII:Lcom/inca/security/nc;

    invoke-virtual {v0}, Lcom/inca/security/nc;->interrupt()V

    .line 2438
    :cond_2
    invoke-static {}, Lcom/inca/security/rc;->IiiiIIIIii()Lcom/inca/security/rc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inca/security/rc;->IiiiIIIIii()V

    .line 2025
    new-instance v0, Lcom/inca/security/nc;

    invoke-direct {v0, p0, p0, p2}, Lcom/inca/security/nc;-><init>(Lcom/inca/security/Core/AppGuardEngine;Lcom/inca/security/Core/AppGuardEngine;I)V

    iput-object v0, p0, Lcom/inca/security/Core/AppGuardEngine;->IIIiIiiiII:Lcom/inca/security/nc;

    .line 2698
    iget-object v0, p0, Lcom/inca/security/Core/AppGuardEngine;->IIIiIiiiII:Lcom/inca/security/nc;

    invoke-virtual {v0}, Lcom/inca/security/nc;->start()V

    .line 2315
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public IiiiIIIIii(Z)V
    .locals 0
    .param p1, "arg0"    # Z

    .prologue
    .line 2171
    invoke-direct {p0, p1}, Lcom/inca/security/Core/AppGuardEngine;->IlIIIIlllI(Z)V

    .line 1960
    return-void
.end method

.method public IiiiIIIIii([BZZ)V
    .locals 17
    .param p1, "arg0"    # [B
    .param p2, "arg1"    # Z
    .param p3, "arg2"    # Z

    .prologue
    .line 3133
    if-eqz p2, :cond_1

    .line 1956
    invoke-direct/range {p0 .. p0}, Lcom/inca/security/Core/AppGuardEngine;->IIIIIIIllI()V

    .line 1996
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/inca/security/Core/AppGuardEngine;->IiiiIIIIii([B)Z
    :try_end_0
    .catch Lcom/inca/security/Exception/AppGuardException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v2, p1

    .line 2458
    .end local p1    # "arg0":[B
    .local v2, "arg0":[B
    :goto_0
    if-nez v2, :cond_4

    .line 2509
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/inca/security/Core/AppGuardEngine;->iiiIIIiiII:Lcom/inca/security/AppGuard/AppGuardEventListener;

    .line 2343
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/inca/security/Core/AppGuardEngine;->IiIiIiIiII:Landroid/os/Handler;

    .line 2958
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/inca/security/Core/AppGuardEngine;->iIiiiiiIIi:Landroid/os/Handler;

    .line 2585
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/inca/security/Core/AppGuardEngine;->iiiIIiIiiI:Landroid/os/Handler;

    .line 3130
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/inca/security/Core/AppGuardEngine;->iIiiiIIiIi:Ljava/util/Queue;

    monitor-enter v4

    .line 3087
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/inca/security/Core/AppGuardEngine;->iIiiiIIiIi:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->clear()V

    .line 3413
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2591
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/inca/security/Core/AppGuardEngine;->IIIiIiiiII:Lcom/inca/security/nc;

    if-eqz v3, :cond_0

    .line 2104
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/inca/security/Core/AppGuardEngine;->IIIiIiiiII:Lcom/inca/security/nc;

    invoke-virtual {v4}, Lcom/inca/security/nc;->IiiiIIIIii()V

    .line 3190
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/inca/security/Core/AppGuardEngine;->IIIiIiiiII:Lcom/inca/security/nc;

    invoke-virtual {v4}, Lcom/inca/security/nc;->interrupt()V

    .line 3032
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/inca/security/Core/AppGuardEngine;->IIIiIiiiII:Lcom/inca/security/nc;

    .line 2510
    :cond_0
    const/4 v3, 0x0

    sput-object v3, Lcom/inca/security/Core/AppGuardEngine;->IIIiiIIiii:Ljava/lang/String;

    const/4 v3, 0x0

    .line 3158
    const-string v4, ""

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/inca/security/Core/AppGuardEngine;->IiiiIIIIii(Ljava/lang/String;)V

    move v4, v3

    .line 3301
    :goto_1
    const/16 v5, 0x40

    if-ge v3, v5, :cond_2

    .line 2569
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/inca/security/Core/AppGuardEngine;->IiIIIIIiII:[Z

    const/4 v5, 0x0

    aput-boolean v5, v3, v4

    .line 3213
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/inca/security/Core/AppGuardEngine;->IIiiiIIIIi:[Z

    const/4 v6, 0x0

    add-int/lit8 v3, v4, 0x1

    aput-boolean v6, v5, v4

    move v4, v3

    .line 3301
    goto :goto_1

    .line 3161
    .end local v2    # "arg0":[B
    .restart local p1    # "arg0":[B
    :catch_0
    move-exception v3

    :cond_1
    move-object/from16 v2, p1

    .line 2458
    .end local p1    # "arg0":[B
    .restart local v2    # "arg0":[B
    goto :goto_0

    .line 3413
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 3324
    :cond_2
    invoke-static {}, Lcom/inca/security/DexProtect/Binder;->getReserved1()Ljava/lang/Object;

    move-result-object v3

    .line 2333
    if-eqz v3, :cond_3

    .line 2176
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 3379
    const-string v5, "\n\u0002\n\u0002*\"*\"*\""

    invoke-static {v5}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 2720
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {}, Lcom/inca/security/Proxy/JNISoxProxy;->getContext()Landroid/content/Context;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 2902
    :goto_2
    return-void

    .line 2565
    :cond_3
    invoke-static {}, Lcom/inca/security/Proxy/JNISoxProxy;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/inca/security/Core/AppGuardEngine;->IiIiiIiIiI(Landroid/content/Context;)V

    goto :goto_2

    .line 3163
    :cond_4
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/inca/security/Core/AppGuardEngine;->iiIIiiiiii:Z

    .line 2774
    const/16 v3, 0x10

    .line 2230
    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/inca/security/va;->iIiIIiIIIi([BI)I

    move-result v7

    .line 2055
    const/4 v3, 0x0

    .line 2202
    const/16 v4, 0x14

    move v5, v3

    :goto_3
    if-ge v3, v7, :cond_c

    .line 1943
    add-int/lit8 v6, v4, 0x2

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/inca/security/va;->iIiIIiIIIi([BI)S

    move-result v4

    .line 2368
    add-int/lit8 v3, v6, 0x2

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/inca/security/va;->iIiIIiIIIi([BI)S

    move-result v8

    .line 2140
    sparse-switch v4, :sswitch_data_0

    .line 2204
    :cond_5
    :goto_4
    add-int/2addr v3, v8

    .line 2055
    :cond_6
    :goto_5
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move/from16 v16, v4

    move v4, v3

    move/from16 v3, v16

    goto :goto_3

    .line 2319
    :sswitch_0
    const/16 v4, 0x8

    if-ne v8, v4, :cond_7

    const/4 v4, 0x0

    .line 2919
    const-wide/16 v10, 0x0

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/inca/security/Core/AppGuardEngine;->IIiiiIIiII:J

    move v6, v4

    .line 2859
    :goto_6
    const/16 v9, 0x8

    if-ge v4, v9, :cond_7

    .line 2118
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/inca/security/Core/AppGuardEngine;->IIiiiIIiII:J

    add-int v4, v3, v6

    aget-byte v4, p1, v4

    int-to-long v12, v4

    const-wide/16 v14, 0xff

    and-long/2addr v12, v14

    mul-int/lit8 v9, v6, 0x8

    add-int/lit8 v4, v6, 0x1

    shl-long/2addr v12, v9

    or-long/2addr v10, v12

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/inca/security/Core/AppGuardEngine;->IIiiiIIiII:J

    move v6, v4

    .line 2859
    goto :goto_6

    .line 3393
    :cond_7
    add-int/2addr v3, v8

    .line 2211
    goto :goto_5

    .line 3176
    :sswitch_1
    const/16 v4, 0x8

    if-ne v8, v4, :cond_8

    const/4 v4, 0x0

    .line 2607
    const-wide/16 v10, 0x0

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/inca/security/Core/AppGuardEngine;->IIIiiiiIII:J

    move v6, v4

    .line 2039
    :goto_7
    const/16 v9, 0x8

    if-ge v4, v9, :cond_8

    .line 2609
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/inca/security/Core/AppGuardEngine;->IIIiiiiIII:J

    add-int v4, v3, v6

    aget-byte v4, p1, v4

    int-to-long v12, v4

    const-wide/16 v14, 0xff

    and-long/2addr v12, v14

    mul-int/lit8 v9, v6, 0x8

    add-int/lit8 v4, v6, 0x1

    shl-long/2addr v12, v9

    or-long/2addr v10, v12

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/inca/security/Core/AppGuardEngine;->IIIiiiiIII:J

    move v6, v4

    .line 2039
    goto :goto_7

    .line 2222
    :cond_8
    add-int/2addr v3, v8

    .line 3409
    goto :goto_5

    .line 2466
    :sswitch_2
    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/inca/security/va;->iIiIIiIIIi([BI)I

    move-result v8

    .line 2755
    const/4 v4, 0x0

    .line 2378
    add-int/lit8 v3, v3, 0x4

    move v6, v4

    :goto_8
    if-ge v4, v8, :cond_6

    .line 3053
    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/inca/security/va;->iIiIIiIIIi([BI)I

    move-result v4

    .line 2300
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/inca/security/Core/AppGuardEngine;->IiIIiIIIIi:Ljava/util/ArrayList;

    new-instance v10, Ljava/lang/String;

    .line 2582
    add-int/lit8 v11, v3, 0x4

    move-object/from16 v0, p1

    invoke-direct {v10, v0, v11, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3244
    add-int/lit8 v3, v6, 0x1

    add-int/2addr v4, v11

    move v6, v3

    move/from16 v16, v3

    move v3, v4

    move/from16 v4, v16

    .line 2755
    goto :goto_8

    .line 2060
    :sswitch_3
    if-lez v8, :cond_a

    .line 2223
    new-array v6, v8, [B

    const/4 v4, 0x1

    .line 2686
    const/4 v9, 0x0

    invoke-static {v6, v9}, Ljava/util/Arrays;->fill([BB)V

    .line 1977
    const/4 v9, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v3, v6, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3029
    :try_start_4
    const-string v9, ""

    .line 3325
    invoke-static {}, Lcom/inca/security/Proxy/JNISoxProxy;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-static {}, Lcom/inca/security/Proxy/JNISoxProxy;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x80

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    .line 3120
    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v10, "N}\u007fJzl}iGl|eDhv" #AppGuardHashKey

    invoke-static {v10}, Lcom/inca/security/n;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2669
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_9

    .line 3209
    const/4 v4, 0x0

    .line 2268
    :cond_9
    invoke-static {v9}, Lcom/inca/security/va;->IiiiIIIIii(Ljava/lang/String;)[B

    move-result-object v9

    invoke-static {v6, v9}, Lcom/inca/security/j;->IiiiIIIIii([B[B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/inca/security/Core/AppGuardEngine;->IiiiIIiIII:Ljava/lang/String;
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2575
    if-nez v4, :cond_a

    .line 2292
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/inca/security/Core/AppGuardEngine;->IIiiiiiIIi:Lcom/inca/security/Core/AppGuardEngine;

    const/4 v6, 0x2

    const/4 v9, 0x3

    const-string v10, "*-\u000f1\u0004*\u000f\u000e\n-\u0002%\u000e0\u001fm\u0013.\u0007" #AndroidManifest.xml

    invoke-static {v10}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3278
    invoke-static {v10}, Lcom/inca/security/ua;->IiiiIIIIii(Ljava/lang/String;)[B

    move-result-object v10

    .line 2292
    invoke-virtual {v4, v6, v9, v10}, Lcom/inca/security/Core/AppGuardEngine;->conditionCallback(II[B)V

    .line 2257
    new-instance v4, Lcom/inca/security/ni;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/inca/security/ni;-><init>(Lcom/inca/security/Core/AppGuardEngine;)V

    .line 2773
    invoke-virtual {v4}, Lcom/inca/security/ni;->start()V

    .line 2269
    :cond_a
    :goto_9
    add-int/2addr v3, v8

    .line 2248
    goto/16 :goto_5

    .line 2411
    :catch_1
    move-exception v4

    .line 2292
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/inca/security/Core/AppGuardEngine;->IIiiiiiIIi:Lcom/inca/security/Core/AppGuardEngine;

    const/4 v6, 0x2

    const/4 v9, 0x3

    const-string v10, "Nck\u007f`dk@ncfkj~{#w`c" #AndroidManifest.xml

    invoke-static {v10}, Lcom/inca/security/n;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3278
    invoke-static {v10}, Lcom/inca/security/ua;->IiiiIIIIii(Ljava/lang/String;)[B

    move-result-object v10

    .line 2292
    invoke-virtual {v4, v6, v9, v10}, Lcom/inca/security/Core/AppGuardEngine;->conditionCallback(II[B)V

    .line 2257
    new-instance v4, Lcom/inca/security/ni;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/inca/security/ni;-><init>(Lcom/inca/security/Core/AppGuardEngine;)V

    .line 2773
    invoke-virtual {v4}, Lcom/inca/security/ni;->start()V

    goto :goto_9

    .line 2575
    :catchall_1
    move-exception v3

    if-nez v4, :cond_b

    .line 2292
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/inca/security/Core/AppGuardEngine;->IIiiiiiIIi:Lcom/inca/security/Core/AppGuardEngine;

    const/4 v5, 0x2

    const/4 v6, 0x3

    const-string v7, "*-\u000f1\u0004*\u000f\u000e\n-\u0002%\u000e0\u001fm\u0013.\u0007" #AndroidManifest.xml

    invoke-static {v7}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3278
    invoke-static {v7}, Lcom/inca/security/ua;->IiiiIIIIii(Ljava/lang/String;)[B

    move-result-object v7

    .line 2292
    invoke-virtual {v4, v5, v6, v7}, Lcom/inca/security/Core/AppGuardEngine;->conditionCallback(II[B)V

    .line 2257
    new-instance v4, Lcom/inca/security/ni;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/inca/security/ni;-><init>(Lcom/inca/security/Core/AppGuardEngine;)V

    .line 2773
    invoke-virtual {v4}, Lcom/inca/security/ni;->start()V

    :cond_b
    throw v3

    .line 2400
    :sswitch_4
    if-lez v8, :cond_5

    .line 2195
    new-array v4, v8, [B

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/inca/security/Core/AppGuardEngine;->IiiIiiiIiI:[B

    .line 2344
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/inca/security/Core/AppGuardEngine;->IiiIiiiIiI:[B

    const/4 v6, 0x0

    invoke-static {v4, v6}, Ljava/util/Arrays;->fill([BB)V

    .line 2395
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/inca/security/Core/AppGuardEngine;->IiiIiiiIiI:[B

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v3, v4, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_4

    .line 2926
    :cond_c
    const/16 v3, 0x7c6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v3, v1}, Lcom/inca/security/Core/AppGuardEngine;->llIIIIlIIl(I[B)I

    .line 2862
    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/inca/security/Core/AppGuardEngine;->conditionCallback(II[B)V

    goto/16 :goto_2

    .line 2520
    :catch_2
    move-exception v3

    goto/16 :goto_2

    .line 2140
    nop

    :sswitch_data_0
    .sparse-switch
        0x456d -> :sswitch_2
        0x5361 -> :sswitch_3
        0x5370 -> :sswitch_4
        0x645e -> :sswitch_0
        0x7448 -> :sswitch_1
    .end sparse-switch
.end method

.method public IiiiIIIIii()Z
    .locals 1

    .prologue
    .line 2746
    iget-boolean v0, p0, Lcom/inca/security/Core/AppGuardEngine;->IiiIiIIiiI:Z

    return v0
.end method

.method public IiiiIIIIii([BZ)Z
    .locals 17
    .param p1, "arg0"    # [B
    .param p2, "arg1"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "TrulyRandom"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inca/security/Exception/AppGuardException;
        }
    .end annotation

    .prologue
    .line 1091
    invoke-static {}, Lcom/inca/security/Proxy/JNISoxProxy;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "\n-\u000f1\u0004*\u000fm\u001b&\u0019.\u00020\u0018*\u0004-E\n%\u0017.\u0011%\u0006?" #android.permission.INTERNET

    invoke-static {v4}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 966
    invoke-static {}, Lcom/inca/security/Proxy/JNISoxProxy;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 1091
    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 727
    invoke-static {}, Lcom/inca/security/Proxy/JNISoxProxy;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "nck\u007f`dk#\u007fh}`f~|d`c!LLNJ^\\RAH[Z@_DR\\YNYJ" #android.permission.ACCESS_NETWORK_STATE

    invoke-static {v4}, Lcom/inca/security/n;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 506
    invoke-static {}, Lcom/inca/security/Proxy/JNISoxProxy;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 727
    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 606
    invoke-static {}, Lcom/inca/security/Proxy/JNISoxProxy;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, " \u0004-\u0005&\u00087\u00025\u00027\u0012" #connectivity

    invoke-static {v4}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1546
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    .line 1538
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 1341
    if-eqz v3, :cond_0

    .line 798
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 981
    new-instance v3, Lcom/inca/security/wc;

    invoke-static {}, Lcom/inca/security/Proxy/JNISoxProxy;->getContext()Landroid/content/Context;

    move-result-object v4

    const/16 v5, 0x270f

    const/4 v6, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/inca/security/Core/AppGuardEngine;->IiiiIIIIii()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/inca/security/wc;-><init>(Landroid/content/Context;I[BLjava/lang/String;)V

    invoke-virtual {v3}, Lcom/inca/security/wc;->start()V

    .line 1196
    invoke-direct/range {p0 .. p0}, Lcom/inca/security/Core/AppGuardEngine;->IIiIIiIiIi()V

    .line 1148
    :cond_0
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/inca/security/Core/AppGuardEngine;->iiIIiiiiii:Z

    .line 533
    const/16 v3, 0x10

    .line 542
    if-eqz p1, :cond_8

    .line 1144
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/inca/security/Core/AppGuardEngine;->IIIiIIiIiI:Z

    .line 1577
    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/inca/security/va;->iIiIIiIIIi([BI)I

    move-result v7

    .line 1162
    const/16 v4, 0x14

    .line 1533
    move-object/from16 v0, p0

    iput v7, v0, Lcom/inca/security/Core/AppGuardEngine;->IiiIIIIIii:I

    .line 709
    const/4 v3, 0x0

    move v5, v3

    :goto_0
    if-ge v3, v7, :cond_9

    .line 1023
    add-int/lit8 v6, v4, 0x2

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/inca/security/va;->iIiIIiIIIi([BI)S

    move-result v4

    .line 1451
    add-int/lit8 v3, v6, 0x2

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/inca/security/va;->iIiIIiIIIi([BI)S

    move-result v8

    .line 843
    sparse-switch v4, :sswitch_data_0

    .line 1779
    :cond_1
    :goto_1
    add-int/2addr v3, v8

    .line 709
    :cond_2
    :goto_2
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move/from16 v16, v4

    move v4, v3

    move/from16 v3, v16

    goto :goto_0

    .line 677
    :sswitch_0
    const/16 v4, 0x8

    if-ne v8, v4, :cond_3

    const/4 v4, 0x0

    .line 1320
    const-wide/16 v10, 0x0

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/inca/security/Core/AppGuardEngine;->IIiiiIIiII:J

    move v6, v4

    .line 933
    :goto_3
    const/16 v9, 0x8

    if-ge v4, v9, :cond_3

    .line 816
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/inca/security/Core/AppGuardEngine;->IIiiiIIiII:J

    add-int v4, v3, v6

    aget-byte v4, p1, v4

    int-to-long v12, v4

    const-wide/16 v14, 0xff

    and-long/2addr v12, v14

    mul-int/lit8 v9, v6, 0x8

    add-int/lit8 v4, v6, 0x1

    shl-long/2addr v12, v9

    or-long/2addr v10, v12

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/inca/security/Core/AppGuardEngine;->IIiiiIIiII:J

    move v6, v4

    .line 933
    goto :goto_3

    .line 1503
    :cond_3
    add-int/2addr v3, v8

    .line 945
    goto :goto_2

    .line 841
    :sswitch_1
    const/16 v4, 0x8

    if-ne v8, v4, :cond_4

    const/4 v4, 0x0

    .line 1542
    const-wide/16 v10, 0x0

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/inca/security/Core/AppGuardEngine;->IIIiiiiIII:J

    move v6, v4

    .line 1029
    :goto_4
    const/16 v9, 0x8

    if-ge v4, v9, :cond_4

    .line 1477
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/inca/security/Core/AppGuardEngine;->IIIiiiiIII:J

    add-int v4, v3, v6

    aget-byte v4, p1, v4

    int-to-long v12, v4

    const-wide/16 v14, 0xff

    and-long/2addr v12, v14

    mul-int/lit8 v9, v6, 0x8

    add-int/lit8 v4, v6, 0x1

    shl-long/2addr v12, v9

    or-long/2addr v10, v12

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/inca/security/Core/AppGuardEngine;->IIIiiiiIII:J

    move v6, v4

    .line 1029
    goto :goto_4

    .line 1061
    :cond_4
    add-int/2addr v3, v8

    .line 1187
    goto :goto_2

    .line 957
    :sswitch_2
    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/inca/security/va;->iIiIIiIIIi([BI)I

    move-result v8

    .line 755
    const/4 v4, 0x0

    .line 960
    add-int/lit8 v3, v3, 0x4

    move v6, v4

    :goto_5
    if-ge v4, v8, :cond_2

    .line 728
    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/inca/security/va;->iIiIIiIIIi([BI)I

    move-result v4

    .line 1127
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/inca/security/Core/AppGuardEngine;->IiIIiIIIIi:Ljava/util/ArrayList;

    new-instance v10, Ljava/lang/String;

    .line 818
    add-int/lit8 v11, v3, 0x4

    move-object/from16 v0, p1

    invoke-direct {v10, v0, v11, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 988
    add-int/lit8 v3, v6, 0x1

    add-int/2addr v4, v11

    move v6, v3

    move/from16 v16, v3

    move v3, v4

    move/from16 v4, v16

    .line 755
    goto :goto_5

    .line 1636
    :sswitch_3
    if-lez v8, :cond_6

    .line 1771
    const/4 v4, 0x1

    .line 1807
    new-array v6, v8, [B

    .line 1804
    const/4 v9, 0x0

    invoke-static {v6, v9}, Ljava/util/Arrays;->fill([BB)V

    .line 1879
    const/4 v9, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v3, v6, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1754
    :try_start_0
    const-string v9, ""

    .line 1698
    invoke-static {}, Lcom/inca/security/Proxy/JNISoxProxy;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-static {}, Lcom/inca/security/Proxy/JNISoxProxy;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x80

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    .line 1869
    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v10, "N}\u007fJzl}iGl|eDhv" #AppGuardHashKey

    invoke-static {v10}, Lcom/inca/security/n;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1739
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_5

    .line 1914
    const/4 v4, 0x0

    .line 1639
    :cond_5
    invoke-static {v9}, Lcom/inca/security/va;->IiiiIIIIii(Ljava/lang/String;)[B

    move-result-object v9

    invoke-static {v6, v9}, Lcom/inca/security/j;->IiiiIIIIii([B[B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/inca/security/Core/AppGuardEngine;->IiiiIIiIII:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1706
    if-nez v4, :cond_6

    .line 1593
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/inca/security/Core/AppGuardEngine;->IIiiiiiIIi:Lcom/inca/security/Core/AppGuardEngine;

    const/4 v6, 0x2

    const/4 v9, 0x3

    const-string v10, "*-\u000f1\u0004*\u000f\u000e\n-\u0002%\u000e0\u001fm\u0013.\u0007" #AndroidManifest.xml

    invoke-static {v10}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1680
    invoke-static {v10}, Lcom/inca/security/ua;->IiiiIIIIii(Ljava/lang/String;)[B

    move-result-object v10

    .line 1593
    invoke-virtual {v4, v6, v9, v10}, Lcom/inca/security/Core/AppGuardEngine;->conditionCallback(II[B)V

    .line 1699
    new-instance v4, Lcom/inca/security/mc;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/inca/security/mc;-><init>(Lcom/inca/security/Core/AppGuardEngine;)V

    .line 1790
    invoke-virtual {v4}, Lcom/inca/security/mc;->start()V

    .line 1686
    :cond_6
    :goto_6
    add-int/2addr v3, v8

    .line 1757
    goto/16 :goto_2

    .line 1723
    :catch_0
    move-exception v4

    .line 1593
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/inca/security/Core/AppGuardEngine;->IIiiiiiIIi:Lcom/inca/security/Core/AppGuardEngine;

    const/4 v6, 0x2

    const/4 v9, 0x3

    const-string v10, "Nck\u007f`dk@ncfkj~{#w`c" #AndroidManifest.xml

    invoke-static {v10}, Lcom/inca/security/n;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1680
    invoke-static {v10}, Lcom/inca/security/ua;->IiiiIIIIii(Ljava/lang/String;)[B

    move-result-object v10

    .line 1593
    invoke-virtual {v4, v6, v9, v10}, Lcom/inca/security/Core/AppGuardEngine;->conditionCallback(II[B)V

    .line 1699
    new-instance v4, Lcom/inca/security/mc;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/inca/security/mc;-><init>(Lcom/inca/security/Core/AppGuardEngine;)V

    .line 1790
    invoke-virtual {v4}, Lcom/inca/security/mc;->start()V

    goto :goto_6

    .line 1706
    :catchall_0
    move-exception v3

    if-nez v4, :cond_7

    .line 1593
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/inca/security/Core/AppGuardEngine;->IIiiiiiIIi:Lcom/inca/security/Core/AppGuardEngine;

    const/4 v5, 0x2

    const/4 v6, 0x3

    const-string v7, "*-\u000f1\u0004*\u000f\u000e\n-\u0002%\u000e0\u001fm\u0013.\u0007" #AndroidManifest.xml

    invoke-static {v7}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1680
    invoke-static {v7}, Lcom/inca/security/ua;->IiiiIIIIii(Ljava/lang/String;)[B

    move-result-object v7

    .line 1593
    invoke-virtual {v4, v5, v6, v7}, Lcom/inca/security/Core/AppGuardEngine;->conditionCallback(II[B)V

    .line 1699
    new-instance v4, Lcom/inca/security/mc;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/inca/security/mc;-><init>(Lcom/inca/security/Core/AppGuardEngine;)V

    .line 1790
    invoke-virtual {v4}, Lcom/inca/security/mc;->start()V

    :cond_7
    throw v3

    .line 1665
    :sswitch_4
    if-lez v8, :cond_1

    .line 1594
    new-array v4, v8, [B

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/inca/security/Core/AppGuardEngine;->IiiIiiiIiI:[B

    .line 1619
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/inca/security/Core/AppGuardEngine;->IiiIiiiIiI:[B

    const/4 v6, 0x0

    invoke-static {v4, v6}, Ljava/util/Arrays;->fill([BB)V

    .line 1903
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/inca/security/Core/AppGuardEngine;->IiiIiiiIiI:[B

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v3, v4, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_1

    .line 1868
    :cond_8
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/inca/security/Core/AppGuardEngine;->IIIiIIiIiI:Z

    .line 1612
    :cond_9
    const-wide/16 v4, 0x0

    .line 1904
    const-string v3, "y}xj" #true

    invoke-static {v3}, Lcom/inca/security/n;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1762
    invoke-static {}, Lcom/inca/security/Proxy/JNISoxProxy;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "\r*\u0019&\t\"\u0018&E7\u000e0\u001fm\u0007\"\t" #firebase.test.lab

    invoke-static {v7}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1904
    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1711
    const-wide/16 v6, 0x4000

    or-long/2addr v4, v6

    .line 1646
    :cond_a
    invoke-static {}, Lcom/inca/security/DexProtect/Binder;->getReserved1()Ljava/lang/Object;

    move-result-object v3

    .line 1921
    if-eqz v3, :cond_b

    .line 1621
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    .line 1712
    const-string v7, "DFDfDFDFdF" #IIIiIIIIiI

    invoke-static {v7}, Lcom/inca/security/n;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    sget-object v10, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    sget-object v10, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 1880
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/inca/security/Core/AppGuardEngine;->IIIiiiiIII:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v7, v8

    invoke-virtual {v6, v3, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v2, p0

    .line 1820
    .end local p0    # "this":Lcom/inca/security/Core/AppGuardEngine;
    .local v2, "this":Lcom/inca/security/Core/AppGuardEngine;
    :goto_7
    :try_start_2
    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lcom/inca/security/Core/AppGuardEngine;->IiiiIIIIii([B)Z
    :try_end_2
    .catch Lcom/inca/security/Exception/AppGuardException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v3

    if-nez v3, :cond_c

    .line 1847
    const/4 v3, 0x0

    .line 1878
    :goto_8
    return v3

    .line 1602
    .end local v2    # "this":Lcom/inca/security/Core/AppGuardEngine;
    .restart local p0    # "this":Lcom/inca/security/Core/AppGuardEngine;
    :catch_1
    move-exception v3

    move-object/from16 v2, p0

    .line 1867
    .end local p0    # "this":Lcom/inca/security/Core/AppGuardEngine;
    .restart local v2    # "this":Lcom/inca/security/Core/AppGuardEngine;
    goto :goto_7

    .line 1828
    .end local v2    # "this":Lcom/inca/security/Core/AppGuardEngine;
    .restart local p0    # "this":Lcom/inca/security/Core/AppGuardEngine;
    :cond_b
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/inca/security/Core/AppGuardEngine;->IIIiiiiIII:J

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7, v4, v5}, Lcom/inca/security/Core/AppGuardEngine;->IIIIiIIIiI(JJ)V

    move-object/from16 v2, p0

    .line 1820
    .end local p0    # "this":Lcom/inca/security/Core/AppGuardEngine;
    .restart local v2    # "this":Lcom/inca/security/Core/AppGuardEngine;
    goto :goto_7

    .line 1732
    :catch_2
    move-exception v3

    .line 1773
    throw v3

    .line 1837
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/inca/security/Core/AppGuardEngine;->IIIiIiiiii:Z

    if-eqz v3, :cond_d

    .line 1710
    new-instance v3, Lcom/inca/security/gc;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/inca/security/gc;-><init>(Lcom/inca/security/Core/AppGuardEngine;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/inca/security/Core/AppGuardEngine;->IiiIiiiiii:Landroid/content/BroadcastReceiver;

    .line 1812
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/inca/security/Core/AppGuardEngine;->IIiIiIIIii:Lcom/inca/security/Core/WeakRefHandler;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/inca/security/Core/AppGuardEngine;->IIiIiIIIii:Lcom/inca/security/Core/WeakRefHandler;

    const/4 v5, 0x0

    .line 1898
    invoke-virtual {v4, v5, v5, v5}, Lcom/inca/security/Core/WeakRefHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    .line 1812
    invoke-virtual {v3, v4}, Lcom/inca/security/Core/WeakRefHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 1878
    const/4 v3, 0x1

    goto :goto_8

    .line 843
    :sswitch_data_0
    .sparse-switch
        0x456d -> :sswitch_2
        0x5361 -> :sswitch_3
        0x5370 -> :sswitch_4
        0x645e -> :sswitch_0
        0x7448 -> :sswitch_1
    .end sparse-switch
.end method

.method public conditionCallback(II[B)V
    .locals 18
    .param p1, "arg0"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # [B

    .prologue
    .line 1772
    packed-switch p1, :pswitch_data_0

    .line 3168
    .end local p0    # "this":Lcom/inca/security/Core/AppGuardEngine;
    .end local p2    # "arg1":I
    :cond_0
    :goto_0
    return-void

    .line 1780
    .restart local p0    # "this":Lcom/inca/security/Core/AppGuardEngine;
    .restart local p2    # "arg1":I
    :pswitch_0
    const/16 v4, 0xa

    move/from16 v0, p2

    if-eq v0, v4, :cond_1

    const/4 v4, 0x6

    move/from16 v0, p2

    if-ne v0, v4, :cond_2

    .line 1858
    :cond_1
    new-instance v4, Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/inca/security/Core/AppGuardEngine;->iiiIiIIIII:Ljava/lang/String;

    .line 1721
    const/16 p3, 0x0

    .line 1767
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/inca/security/Core/AppGuardEngine;->iiiIIIiiII:Lcom/inca/security/AppGuard/AppGuardEventListener;

    if-nez v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/inca/security/Core/AppGuardEngine;->IiIiIiIiII:Landroid/os/Handler;

    if-nez v4, :cond_6

    .line 1885
    new-instance v4, Lcom/inca/security/fc;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/inca/security/fc;-><init>(Lcom/inca/security/Core/AppGuardEngine;)V

    .line 1845
    move/from16 v0, p2

    iput v0, v4, Lcom/inca/security/fc;->IIIIiiIiII:I

    .line 1624
    move/from16 v0, p1

    iput v0, v4, Lcom/inca/security/fc;->IiiIiiiIiI:I

    .line 1626
    move-object/from16 v0, p3

    iput-object v0, v4, Lcom/inca/security/fc;->IiIiIiiIii:[B

    .line 1635
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/inca/security/Core/AppGuardEngine;->iIiiiIIiIi:Ljava/util/Queue;

    monitor-enter v5

    .line 1655
    :try_start_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/inca/security/Core/AppGuardEngine;->iIiiiIIiIi:Ljava/util/Queue;

    invoke-interface {v6, v4}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 1746
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1825
    :cond_3
    :goto_1
    const/4 v4, 0x1

    move/from16 v0, p2

    if-eq v0, v4, :cond_4

    const/4 v4, 0x3

    move/from16 v0, p2

    if-ne v0, v4, :cond_0

    .line 1588
    :cond_4
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/inca/security/Core/AppGuardEngine;->iiIIiIIiII:Z

    .line 1625
    sput-boolean v4, Lcom/inca/security/pc;->IiIiIiiIii:Z

    .line 1854
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/inca/security/Core/AppGuardEngine;->iiIIiiiiii:Z

    if-eqz v4, :cond_5

    .line 1916
    invoke-static {}, Lcom/inca/security/Proxy/JNISoxProxy;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    new-instance v5, Lcom/inca/security/kf;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/inca/security/kf;-><init>(Lcom/inca/security/Core/AppGuardEngine;)V

    invoke-virtual {v4, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2962
    invoke-static {}, Lcom/inca/security/Proxy/JNISoxProxy;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    new-instance v5, Lcom/inca/security/xk;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/inca/security/xk;-><init>(Lcom/inca/security/Core/AppGuardEngine;)V

    invoke-virtual {v4, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2358
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/inca/security/Core/AppGuardEngine;->IIiiiiiIIi:Lcom/inca/security/Core/AppGuardEngine;

    monitor-enter v5

    .line 2797
    :try_start_1
    new-instance v4, Lcom/inca/security/nc;

    const/16 v6, 0xb4

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v4, v0, v1, v6}, Lcom/inca/security/nc;-><init>(Lcom/inca/security/Core/AppGuardEngine;Lcom/inca/security/Core/AppGuardEngine;I)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/inca/security/Core/AppGuardEngine;->IIIiIiiiII:Lcom/inca/security/nc;

    .line 3433
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/inca/security/Core/AppGuardEngine;->IIIiIiiiII:Lcom/inca/security/nc;

    invoke-virtual {v4}, Lcom/inca/security/nc;->start()V

    .line 2936
    monitor-exit v5

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 1746
    :catchall_1
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4

    .line 1724
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/inca/security/Core/AppGuardEngine;->iiiIIIiiII:Lcom/inca/security/AppGuard/AppGuardEventListener;

    if-eqz v4, :cond_7

    .line 1760
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/inca/security/Core/AppGuardEngine;->iiiIIIiiII:Lcom/inca/security/AppGuard/AppGuardEventListener;

    move/from16 v0, p2

    move-object/from16 v1, p3

    invoke-interface {v4, v0, v1}, Lcom/inca/security/AppGuard/AppGuardEventListener;->onEvent(I[B)V

    .line 1840
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/inca/security/Core/AppGuardEngine;->IiIiIiIiII:Landroid/os/Handler;

    if-eqz v4, :cond_3

    .line 1601
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/inca/security/Core/AppGuardEngine;->IiIiIiIiII:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/inca/security/Core/AppGuardEngine;->IiIiIiIiII:Landroid/os/Handler;

    move/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v5, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 2619
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/inca/security/Core/AppGuardEngine;->iiiIIIiiII:Lcom/inca/security/AppGuard/AppGuardEventListener;

    if-nez v4, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/inca/security/Core/AppGuardEngine;->iIiiiiiIIi:Landroid/os/Handler;

    if-nez v4, :cond_9

    .line 2984
    new-instance v4, Lcom/inca/security/fc;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/inca/security/fc;-><init>(Lcom/inca/security/Core/AppGuardEngine;)V

    .line 3292
    move/from16 v0, p2

    iput v0, v4, Lcom/inca/security/fc;->IIIIiiIiII:I

    .line 2369
    move/from16 v0, p1

    iput v0, v4, Lcom/inca/security/fc;->IiiIiiiIiI:I

    .line 3151
    move-object/from16 v0, p3

    iput-object v0, v4, Lcom/inca/security/fc;->IiIiIiiIii:[B

    .line 2312
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/inca/security/Core/AppGuardEngine;->iIiiiIIiIi:Ljava/util/Queue;

    monitor-enter v5

    .line 3358
    :try_start_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/inca/security/Core/AppGuardEngine;->iIiiiIIiIi:Ljava/util/Queue;

    invoke-interface {v6, v4}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2081
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 2013
    :cond_8
    :goto_2
    new-instance v4, Lcom/inca/security/wc;

    invoke-static {}, Lcom/inca/security/Proxy/JNISoxProxy;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/inca/security/Core/AppGuardEngine;->IiiiIIIIii()Ljava/lang/String;

    move-result-object v6

    move/from16 v0, p2

    move-object/from16 v1, p3

    invoke-direct {v4, v5, v0, v1, v6}, Lcom/inca/security/wc;-><init>(Landroid/content/Context;I[BLjava/lang/String;)V

    invoke-virtual {v4}, Lcom/inca/security/wc;->start()V

    .line 2912
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/inca/security/Core/AppGuardEngine;->IIiIiIIIii:Lcom/inca/security/Core/WeakRefHandler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/inca/security/Core/AppGuardEngine;->IIiIiIIIii:Lcom/inca/security/Core/WeakRefHandler;

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 3131
    move/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v5, v6, v7, v0, v1}, Lcom/inca/security/Core/WeakRefHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 2912
    invoke-virtual {v4, v5}, Lcom/inca/security/Core/WeakRefHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 1976
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/inca/security/Core/AppGuardEngine;->iiiIIIiiII:Lcom/inca/security/AppGuard/AppGuardEventListener;

    if-eqz v4, :cond_b

    .line 2252
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/inca/security/Core/AppGuardEngine;->iiiIIIiiII:Lcom/inca/security/AppGuard/AppGuardEventListener;

    move/from16 v0, p2

    move-object/from16 v1, p3

    invoke-interface {v4, v0, v1}, Lcom/inca/security/AppGuard/AppGuardEventListener;->onError(I[B)V

    goto/16 :goto_0

    .line 2081
    :catchall_2
    move-exception v4

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v4

    .line 3038
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/inca/security/Core/AppGuardEngine;->iiiIIIiiII:Lcom/inca/security/AppGuard/AppGuardEventListener;

    if-eqz v4, :cond_a

    .line 2349
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/inca/security/Core/AppGuardEngine;->iiiIIIiiII:Lcom/inca/security/AppGuard/AppGuardEventListener;

    move/from16 v0, p2

    move-object/from16 v1, p3

    invoke-interface {v4, v0, v1}, Lcom/inca/security/AppGuard/AppGuardEventListener;->onError(I[B)V

    goto :goto_2

    .line 2599
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/inca/security/Core/AppGuardEngine;->iIiiiiiIIi:Landroid/os/Handler;

    if-eqz v4, :cond_8

    .line 3308
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/inca/security/Core/AppGuardEngine;->iIiiiiiIIi:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/inca/security/Core/AppGuardEngine;->iIiiiiiIIi:Landroid/os/Handler;

    move/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v5, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 2302
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/inca/security/Core/AppGuardEngine;->iIiiiiiIIi:Landroid/os/Handler;

    if-eqz v4, :cond_0

    .line 1994
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/inca/security/Core/AppGuardEngine;->iIiiiiiIIi:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/inca/security/Core/AppGuardEngine;->iIiiiiiIIi:Landroid/os/Handler;

    move/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v5, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 1965
    :pswitch_2
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/inca/security/Core/AppGuardEngine;->IiiiIIIIii(I)I

    move-result v17

    .line 2012
    new-instance v5, Ljava/lang/String;

    const-string v4, ""

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 2117
    const/4 v7, 0x0

    .line 2035
    sparse-switch p2, :sswitch_data_0

    move-object v6, v5

    .line 3261
    :cond_c
    if-eqz p3, :cond_26

    .line 2568
    move-object/from16 v0, p3

    array-length v4, v0

    const/4 v5, 0x1

    if-le v4, v5, :cond_26

    .line 3162
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p3

    array-length v8, v0

    move-object/from16 v0, p3

    invoke-direct {v5, v0, v6, v8}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move v5, v7

    move-object v10, v6

    .line 2973
    :goto_3
    const/16 v16, 0x0

    .line 1941
    if-eqz p2, :cond_f

    .line 2562
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/inca/security/Core/AppGuardEngine;->IIIiiiiIII:J

    const-wide/16 v8, 0x1

    add-int/lit8 v4, p2, -0x1

    shl-long/2addr v8, v4

    and-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-nez v4, :cond_1f

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/inca/security/Core/AppGuardEngine;->IIiiiIIiII:J

    const-wide/16 v8, 0x1

    add-int/lit8 v4, p2, -0x1

    shl-long/2addr v8, v4

    and-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-nez v4, :cond_1f

    .line 2471
    const/4 v4, 0x1

    move/from16 v14, p2

    .line 2989
    .end local p2    # "arg1":I
    .local v14, "arg1":I
    :goto_4
    const/4 v6, 0x6

    if-ne v14, v6, :cond_d

    .line 2666
    invoke-static {}, Lcom/inca/security/Proxy/JNISoxProxy;->getDeviceInfo()Lcom/inca/security/c;

    move-result-object v6

    .line 2957
    if-eqz v6, :cond_d

    .line 3251
    invoke-virtual {v6}, Lcom/inca/security/c;->iiiIIiIiIi()Ljava/lang/String;

    move-result-object v7

    const-string v8, "x86"

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_d

    invoke-virtual {v6}, Lcom/inca/security/c;->iiiiIIiiII()Ljava/lang/String;

    move-result-object v6

    const-string v7, "\n1\u0006" #arm

    invoke-static {v7}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_d

    .line 3329
    const/4 v4, 0x0

    .line 2877
    :cond_d
    const/16 v6, 0x23

    move/from16 v0, p2

    if-ne v0, v6, :cond_25

    .line 3074
    if-nez v5, :cond_25

    .line 2892
    const/4 v4, 0x0

    move/from16 v16, v4

    .line 2355
    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/inca/security/Core/AppGuardEngine;->IiIIIIIiII:[Z

    aget-boolean v4, v4, p2

    if-nez v4, :cond_f

    .line 2057
    const-string v13, ""

    .line 2603
    const/16 v4, 0x25

    move/from16 v0, p2

    if-ne v0, v4, :cond_e

    .line 2506
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 2298
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/inca/security/Core/AppGuardEngine;->iiiIiIIIII:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2665
    const-string v5, "!/" #, 

    invoke-static {v5}, Lcom/inca/security/n;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1990
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/inca/security/Core/AppGuardEngine;->IIiiiIIiII:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 1980
    const-string v5, "oK" #, 

    invoke-static {v5}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2377
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/inca/security/Core/AppGuardEngine;->IIIiiiiIII:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 2897
    const-string v5, "!/" #, 

    invoke-static {v5}, Lcom/inca/security/n;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2040
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/inca/security/Core/AppGuardEngine;->IIIiIIiIiI:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 3192
    const-string v5, "oK" #, 

    invoke-static {v5}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2239
    move-object/from16 v0, p0

    iget v5, v0, Lcom/inca/security/Core/AppGuardEngine;->IiiIIIIIii:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 2286
    const-string v5, "!/" #, 

    invoke-static {v5}, Lcom/inca/security/n;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2812
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/inca/security/Core/AppGuardEngine;->IiIiIIIiIi:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 3095
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    .line 3375
    :cond_e
    new-instance v4, Lcom/inca/security/xc;

    invoke-static {}, Lcom/inca/security/Proxy/JNISoxProxy;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/inca/security/Core/AppGuardEngine;->iiiiIIIiii:Lcom/inca/security/uc;

    invoke-static {}, Lcom/inca/security/AppGuard/AppGuardUserInfo;->getUserId()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/inca/security/Core/AppGuardEngine;->IiiIiIIiIi:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/inca/security/Core/AppGuardEngine;->IiIiIiiIii:[Ljava/lang/String;

    aget-object v9, v9, p2

    const-string v11, ""

    .line 2551
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_20

    const-string v10, "null"

    move/from16 v11, v16

    :goto_6
    if-eqz v11, :cond_21

    const-string v11, "7\u000e1\u0006*\u0005\"\u001f&\u000f"

    invoke-static {v11}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v15, p0

    .line 2540
    .end local p0    # "this":Lcom/inca/security/Core/AppGuardEngine;
    .local v15, "this":Lcom/inca/security/Core/AppGuardEngine;
    :goto_7
    invoke-virtual {v15}, Lcom/inca/security/Core/AppGuardEngine;->IiiiIIIIii()Ljava/lang/String;

    move-result-object v12

    invoke-direct/range {v4 .. v13}, Lcom/inca/security/xc;-><init>(Landroid/content/Context;Lcom/inca/security/uc;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/inca/security/xc;->start()V

    .line 2366
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/inca/security/Core/AppGuardEngine;->IiIIIIIiII:[Z

    const/4 v5, 0x1

    aput-boolean v5, v4, p2

    .line 2830
    .end local v14    # "arg1":I
    .end local v15    # "this":Lcom/inca/security/Core/AppGuardEngine;
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/inca/security/Core/AppGuardEngine;->IIiiiIIIIi:[Z

    aget-boolean v4, v4, v17

    if-nez v4, :cond_10

    .line 2285
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/inca/security/Core/AppGuardEngine;->IIiiiIIIIi:[Z

    const/4 v5, 0x1

    aput-boolean v5, v4, v17

    .line 2036
    if-nez v16, :cond_24

    .line 2529
    mul-int/lit8 v4, v17, -0x1

    .line 2488
    :goto_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/inca/security/Core/AppGuardEngine;->iiiIIIiiII:Lcom/inca/security/AppGuard/AppGuardEventListener;

    if-nez v5, :cond_22

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/inca/security/Core/AppGuardEngine;->iiiIIiIiiI:Landroid/os/Handler;

    if-nez v5, :cond_22

    .line 2063
    new-instance v4, Lcom/inca/security/fc;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/inca/security/fc;-><init>(Lcom/inca/security/Core/AppGuardEngine;)V

    .line 2967
    move/from16 v0, p2

    iput v0, v4, Lcom/inca/security/fc;->IIIIiiIiII:I

    .line 1975
    move/from16 v0, p1

    iput v0, v4, Lcom/inca/security/fc;->IiiIiiiIiI:I

    .line 2077
    move-object/from16 v0, p3

    iput-object v0, v4, Lcom/inca/security/fc;->IiIiIiiIii:[B

    .line 2287
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/inca/security/Core/AppGuardEngine;->iIiiiIIiIi:Ljava/util/Queue;

    monitor-enter v5

    .line 1934
    :try_start_5
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/inca/security/Core/AppGuardEngine;->iIiiiIIiIi:Ljava/util/Queue;

    invoke-interface {v6, v4}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 3160
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 2942
    :cond_10
    :goto_9
    if-eqz v16, :cond_0

    .line 1989
    if-eqz p2, :cond_0

    .line 1991
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/inca/security/Core/AppGuardEngine;->IIiIiIIIii:Lcom/inca/security/Core/WeakRefHandler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/inca/security/Core/AppGuardEngine;->IIiIiIIIii:Lcom/inca/security/Core/WeakRefHandler;

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 2071
    move/from16 v0, p2

    invoke-virtual {v5, v6, v0, v7}, Lcom/inca/security/Core/WeakRefHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    .line 1991
    invoke-virtual {v4, v5}, Lcom/inca/security/Core/WeakRefHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 2593
    new-instance v4, Lcom/inca/security/zh;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/inca/security/zh;-><init>(Lcom/inca/security/Core/AppGuardEngine;)V

    .line 2383
    invoke-virtual {v4}, Lcom/inca/security/zh;->start()V

    goto/16 :goto_0

    .line 2465
    .restart local p0    # "this":Lcom/inca/security/Core/AppGuardEngine;
    .restart local p2    # "arg1":I
    :sswitch_0
    invoke-static {}, Lcom/inca/security/Common/SecurityEventParser;->getInstance()Lcom/inca/security/Common/SecurityEventParser;

    move-result-object v4

    move/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v4, v0, v1, v2}, Lcom/inca/security/Common/SecurityEventParser;->parse(II[B)[Ljava/lang/Object;

    move-result-object v8

    .line 3235
    const/4 v4, 0x0

    move-object v6, v5

    move v5, v4

    :goto_a
    array-length v9, v8

    if-ge v4, v9, :cond_26

    .line 2618
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x0

    invoke-virtual {v4, v9, v6}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v4, v8, v5

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v4, "4" #;

    invoke-static {v4}, Lcom/inca/security/n;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    add-int/lit8 v4, v5, 0x1

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    move v5, v4

    .line 3235
    goto :goto_a

    .line 2732
    :sswitch_1
    invoke-static {}, Lcom/inca/security/Common/SecurityEventParser;->getInstance()Lcom/inca/security/Common/SecurityEventParser;

    move-result-object v4

    move/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v4, v0, v1, v2}, Lcom/inca/security/Common/SecurityEventParser;->parse(II[B)[Ljava/lang/Object;

    move-result-object v8

    .line 2712
    new-instance v9, Ljava/util/zip/CRC32;

    invoke-direct {v9}, Ljava/util/zip/CRC32;-><init>()V

    .line 2284
    const/4 v4, 0x0

    move v6, v4

    :goto_b
    array-length v10, v8

    if-ge v4, v10, :cond_12

    .line 2291
    aget-object v4, v8, v6

    check-cast v4, Lcom/inca/security/Common/SecurityEventParser$Process;

    .line 2687
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v11, 0x0

    invoke-virtual {v10, v11, v5}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v10, v4, Lcom/inca/security/Common/SecurityEventParser$Process;->cmdline:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1974
    array-length v10, v8

    add-int/lit8 v10, v10, -0x1

    if-ge v6, v10, :cond_11

    .line 1932
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v11, 0x0

    invoke-virtual {v10, v11, v5}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "P" #;

    invoke-static {v10}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2178
    :cond_11
    add-int/lit8 v6, v6, 0x1

    iget-object v4, v4, Lcom/inca/security/Common/SecurityEventParser$Process;->cmdline:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/util/zip/CRC32;->update([B)V

    move v4, v6

    .line 2284
    goto :goto_b

    .line 2727
    :cond_12
    invoke-virtual {v9}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/inca/security/Core/AppGuardEngine;->iiIiiIIIii:J

    cmp-long v4, v10, v12

    if-eqz v4, :cond_28

    .line 2654
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/inca/security/Core/AppGuardEngine;->IiIIIIIiII:[Z

    const/4 v6, 0x0

    aput-boolean v6, v4, p2

    .line 2909
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/inca/security/Core/AppGuardEngine;->IIiiiIIIIi:[Z

    const/4 v6, 0x0

    aput-boolean v6, v4, v17

    .line 1969
    invoke-virtual {v9}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v8

    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/inca/security/Core/AppGuardEngine;->iiIiiIIIii:J

    move-object v10, v5

    move v5, v7

    goto/16 :goto_3

    .line 1962
    :sswitch_2
    invoke-static {}, Lcom/inca/security/Common/SecurityEventParser;->getInstance()Lcom/inca/security/Common/SecurityEventParser;

    move-result-object v4

    move/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v4, v0, v1, v2}, Lcom/inca/security/Common/SecurityEventParser;->parse(II[B)[Ljava/lang/Object;

    move-result-object v8

    .line 2954
    new-instance v9, Ljava/util/zip/CRC32;

    invoke-direct {v9}, Ljava/util/zip/CRC32;-><init>()V

    .line 2272
    const/4 v4, 0x0

    move-object v6, v5

    move v5, v4

    :goto_c
    array-length v10, v8

    if-ge v4, v10, :cond_13

    .line 2885
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x0

    invoke-virtual {v4, v10, v6}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v4, v8, v5

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "4" #;

    invoke-static {v6}, Lcom/inca/security/n;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2414
    aget-object v4, v8, v5

    add-int/lit8 v5, v5, 0x1

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/util/zip/CRC32;->update([B)V

    move v4, v5

    .line 2272
    goto :goto_c

    .line 1961
    :cond_13
    invoke-virtual {v9}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/inca/security/Core/AppGuardEngine;->IIIiIiIiii:J

    cmp-long v4, v4, v10

    if-eqz v4, :cond_26

    .line 2336
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/inca/security/Core/AppGuardEngine;->IiIIIIIiII:[Z

    const/4 v5, 0x0

    aput-boolean v5, v4, p2

    .line 3434
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/inca/security/Core/AppGuardEngine;->IIiiiIIIIi:[Z

    const/4 v5, 0x0

    aput-boolean v5, v4, v17

    .line 3274
    invoke-virtual {v9}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/inca/security/Core/AppGuardEngine;->IIIiIiIiii:J

    move v5, v7

    move-object v10, v6

    goto/16 :goto_3

    .line 2090
    :sswitch_3
    invoke-static {}, Lcom/inca/security/Common/SecurityEventParser;->getInstance()Lcom/inca/security/Common/SecurityEventParser;

    move-result-object v4

    move/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v4, v0, v1, v2}, Lcom/inca/security/Common/SecurityEventParser;->parse(II[B)[Ljava/lang/Object;

    move-result-object v8

    .line 2872
    new-instance v9, Ljava/util/zip/CRC32;

    invoke-direct {v9}, Ljava/util/zip/CRC32;-><init>()V

    .line 3332
    const/4 v4, 0x0

    move-object v6, v5

    move v5, v4

    :goto_d
    array-length v10, v8

    if-ge v4, v10, :cond_14

    .line 2881
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x0

    invoke-virtual {v4, v10, v6}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v4, v8, v5

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "P" #;

    invoke-static {v6}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3390
    aget-object v4, v8, v5

    add-int/lit8 v5, v5, 0x1

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/util/zip/CRC32;->update([B)V

    move v4, v5

    .line 3332
    goto :goto_d

    .line 2136
    :cond_14
    invoke-virtual {v9}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/inca/security/Core/AppGuardEngine;->IiiiiIiiIi:J

    cmp-long v4, v4, v10

    if-eqz v4, :cond_26

    .line 2321
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/inca/security/Core/AppGuardEngine;->IiIIIIIiII:[Z

    const/4 v5, 0x0

    aput-boolean v5, v4, p2

    .line 2105
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/inca/security/Core/AppGuardEngine;->IIiiiIIIIi:[Z

    const/4 v5, 0x0

    aput-boolean v5, v4, v17

    .line 2305
    invoke-virtual {v9}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/inca/security/Core/AppGuardEngine;->IiiiiIiiIi:J

    move v5, v7

    move-object v10, v6

    goto/16 :goto_3

    .line 3127
    :sswitch_4
    invoke-static {}, Lcom/inca/security/Common/SecurityEventParser;->getInstance()Lcom/inca/security/Common/SecurityEventParser;

    move-result-object v4

    move/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v4, v0, v1, v2}, Lcom/inca/security/Common/SecurityEventParser;->parse(II[B)[Ljava/lang/Object;

    move-result-object v8

    .line 2421
    new-instance v9, Ljava/util/zip/CRC32;

    invoke-direct {v9}, Ljava/util/zip/CRC32;-><init>()V

    .line 1973
    const/4 v4, 0x0

    move-object v6, v5

    move v5, v4

    :goto_e
    array-length v10, v8

    if-ge v4, v10, :cond_15

    .line 2153
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x0

    invoke-virtual {v4, v10, v6}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v4, v8, v5

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "4" #;

    invoke-static {v6}, Lcom/inca/security/n;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2684
    aget-object v4, v8, v5

    add-int/lit8 v5, v5, 0x1

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/util/zip/CRC32;->update([B)V

    move v4, v5

    .line 1973
    goto :goto_e

    .line 2531
    :cond_15
    invoke-virtual {v9}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/inca/security/Core/AppGuardEngine;->IIIIiIIiii:J

    cmp-long v4, v4, v10

    if-eqz v4, :cond_26

    .line 2693
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/inca/security/Core/AppGuardEngine;->IiIIIIIiII:[Z

    const/4 v5, 0x0

    aput-boolean v5, v4, p2

    .line 2070
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/inca/security/Core/AppGuardEngine;->IIiiiIIIIi:[Z

    aget-boolean v4, v4, v17

    const/4 v5, 0x1

    if-ne v4, v5, :cond_16

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/inca/security/Core/AppGuardEngine;->IIIIiIIiii:J

    const-wide/16 v10, 0x0

    cmp-long v4, v4, v10

    if-eqz v4, :cond_16

    .line 2021
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/inca/security/Core/AppGuardEngine;->IIiiiIIIIi:[Z

    const/4 v5, 0x0

    aput-boolean v5, v4, v17

    .line 1964
    :cond_16
    invoke-virtual {v9}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/inca/security/Core/AppGuardEngine;->IIIIiIIiii:J

    move v5, v7

    move-object v10, v6

    goto/16 :goto_3

    .line 2627
    :sswitch_5
    invoke-static {}, Lcom/inca/security/Common/SecurityEventParser;->getInstance()Lcom/inca/security/Common/SecurityEventParser;

    move-result-object v4

    move/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v4, v0, v1, v2}, Lcom/inca/security/Common/SecurityEventParser;->parse(II[B)[Ljava/lang/Object;

    move-result-object v8

    .line 3117
    new-instance v9, Ljava/util/zip/CRC32;

    invoke-direct {v9}, Ljava/util/zip/CRC32;-><init>()V

    .line 2043
    const/4 v4, 0x0

    move-object v6, v5

    move v5, v4

    :goto_f
    array-length v10, v8

    if-ge v4, v10, :cond_17

    .line 2157
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x0

    invoke-virtual {v4, v10, v6}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v4, v8, v5

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "P" #;

    invoke-static {v6}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2744
    aget-object v4, v8, v5

    add-int/lit8 v5, v5, 0x1

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/util/zip/CRC32;->update([B)V

    move v4, v5

    .line 2043
    goto :goto_f

    .line 2837
    :cond_17
    invoke-virtual {v9}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/inca/security/Core/AppGuardEngine;->IIiIIiiiiI:J

    cmp-long v4, v4, v10

    if-eqz v4, :cond_26

    .line 2430
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/inca/security/Core/AppGuardEngine;->IiIIIIIiII:[Z

    const/4 v5, 0x0

    aput-boolean v5, v4, p2

    .line 3154
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/inca/security/Core/AppGuardEngine;->IIiiiIIIIi:[Z

    aget-boolean v4, v4, v17

    const/4 v5, 0x1

    if-ne v4, v5, :cond_18

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/inca/security/Core/AppGuardEngine;->IIiIIiiiiI:J

    const-wide/16 v10, 0x0

    cmp-long v4, v4, v10

    if-eqz v4, :cond_18

    .line 2512
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/inca/security/Core/AppGuardEngine;->IIiiiIIIIi:[Z

    const/4 v5, 0x0

    aput-boolean v5, v4, v17

    .line 2546
    :cond_18
    invoke-virtual {v9}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/inca/security/Core/AppGuardEngine;->IIiIIiiiiI:J

    move v5, v7

    move-object v10, v6

    goto/16 :goto_3

    .line 3373
    :sswitch_6
    invoke-static {}, Lcom/inca/security/Common/SecurityEventParser;->getInstance()Lcom/inca/security/Common/SecurityEventParser;

    move-result-object v4

    move/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v4, v0, v1, v2}, Lcom/inca/security/Common/SecurityEventParser;->parse(II[B)[Ljava/lang/Object;

    move-result-object v8

    .line 2828
    new-instance v9, Ljava/util/zip/CRC32;

    invoke-direct {v9}, Ljava/util/zip/CRC32;-><init>()V

    .line 2961
    const/4 v4, 0x0

    move-object v6, v5

    move v5, v4

    :goto_10
    array-length v10, v8

    if-ge v4, v10, :cond_19

    .line 2955
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x0

    invoke-virtual {v4, v10, v6}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v4, v8, v5

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "4" #;

    invoke-static {v6}, Lcom/inca/security/n;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2120
    aget-object v4, v8, v5

    add-int/lit8 v5, v5, 0x1

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/util/zip/CRC32;->update([B)V

    move v4, v5

    .line 2961
    goto :goto_10

    .line 3387
    :cond_19
    invoke-virtual {v9}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/inca/security/Core/AppGuardEngine;->iiiIIIIiII:J

    cmp-long v4, v4, v10

    if-eqz v4, :cond_26

    .line 3126
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/inca/security/Core/AppGuardEngine;->IiIIIIIiII:[Z

    const/4 v5, 0x0

    aput-boolean v5, v4, p2

    .line 3335
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/inca/security/Core/AppGuardEngine;->IIiiiIIIIi:[Z

    aget-boolean v4, v4, v17

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1a

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/inca/security/Core/AppGuardEngine;->iiiIIIIiII:J

    const-wide/16 v10, 0x0

    cmp-long v4, v4, v10

    if-eqz v4, :cond_1a

    .line 2041
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/inca/security/Core/AppGuardEngine;->IIiiiIIIIi:[Z

    const/4 v5, 0x0

    aput-boolean v5, v4, v17

    .line 2339
    :cond_1a
    invoke-virtual {v9}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/inca/security/Core/AppGuardEngine;->iiiIIIIiII:J

    move v5, v7

    move-object v10, v6

    goto/16 :goto_3

    .line 3086
    :sswitch_7
    const-string v4, "\u0001\"\u001d\"E5\u0006m\u001d&\u00190\u0002,\u0005" #java.vm.version

    invoke-static {v4}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2671
    if-eqz v4, :cond_1b

    const-string v6, "=" #2

    invoke-static {v6}, Lcom/inca/security/n;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 3424
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "*1\u001f" #Art

    invoke-static {v5}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move v5, v7

    move-object v10, v6

    goto/16 :goto_3

    .line 2234
    :cond_1b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Inaydd-t" #Dalvik {

    invoke-static {v5}, Lcom/inca/security/n;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p3

    array-length v8, v0

    move-object/from16 v0, p3

    invoke-direct {v5, v0, v6, v8}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\u0016" #}

    invoke-static {v5}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move v5, v7

    move-object v10, v6

    .line 2836
    goto/16 :goto_3

    .line 2664
    :sswitch_8
    if-eqz p3, :cond_27

    .line 2207
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move v5, v7

    move-object v10, v6

    goto/16 :goto_3

    .line 3125
    :sswitch_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2107
    new-instance v4, Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    const-string v5, "N}fE`bd" #ApiHook

    invoke-static {v5}, Lcom/inca/security/n;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1c

    .line 3279
    const/4 v4, 0x1

    move v5, v4

    move-object v10, v6

    goto/16 :goto_3

    .line 3107
    :cond_1c
    const/4 v4, 0x0

    move v5, v4

    move-object v10, v6

    .line 3304
    goto/16 :goto_3

    .line 3276
    :sswitch_a
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 2691
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v8, ":\u0012:\u0012n&\u000eF\'\u000f" #yyyy-MM-dd

    invoke-static {v8}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-direct {v6, v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 2080
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v5}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/inca/security/Proxy/JNISoxProxy;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "5" #:

    invoke-static {v8}, Lcom/inca/security/n;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v6, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3204
    if-eqz p3, :cond_c

    .line 2313
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/inca/security/Core/AppGuardEngine;->IIiiiIIIIi:[Z

    aget-boolean v4, v4, v17

    if-nez v4, :cond_1e

    .line 2407
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/inca/security/Core/AppGuardEngine;->IIiiiIIIIi:[Z

    const/4 v5, 0x1

    aput-boolean v5, v4, v17

    .line 2850
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/inca/security/Core/AppGuardEngine;->iiiIIIiiII:Lcom/inca/security/AppGuard/AppGuardEventListener;

    if-eqz v4, :cond_1d

    .line 2809
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/inca/security/Core/AppGuardEngine;->iiiIIIiiII:Lcom/inca/security/AppGuard/AppGuardEventListener;

    move/from16 v0, v17

    move-object/from16 v1, p3

    invoke-interface {v4, v0, v1}, Lcom/inca/security/AppGuard/AppGuardEventListener;->onDetected(I[B)V

    .line 2462
    :cond_1d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/inca/security/Core/AppGuardEngine;->iiiIIiIiiI:Landroid/os/Handler;

    if-eqz v4, :cond_1e

    .line 3395
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/inca/security/Core/AppGuardEngine;->iiiIIiIiiI:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/inca/security/Core/AppGuardEngine;->iiiIIiIiiI:Landroid/os/Handler;

    move/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v5, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3111
    :cond_1e
    const/4 v4, 0x0

    aget-byte v4, p3, v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 2763
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/inca/security/Core/AppGuardEngine;->IIiIiIIIii:Lcom/inca/security/Core/WeakRefHandler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/inca/security/Core/AppGuardEngine;->IIiIiIIIii:Lcom/inca/security/Core/WeakRefHandler;

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 3180
    move/from16 v0, p2

    invoke-virtual {v5, v6, v0, v7}, Lcom/inca/security/Core/WeakRefHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    .line 2763
    invoke-virtual {v4, v5}, Lcom/inca/security/Core/WeakRefHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 2586
    new-instance v4, Lcom/inca/security/fo;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/inca/security/fo;-><init>(Lcom/inca/security/Core/AppGuardEngine;)V

    .line 2579
    invoke-virtual {v4}, Lcom/inca/security/fo;->start()V

    goto/16 :goto_0

    .line 2947
    :cond_1f
    const/4 v4, 0x0

    move/from16 v14, p2

    .line 2989
    .end local p2    # "arg1":I
    .restart local v14    # "arg1":I
    goto/16 :goto_4

    :cond_20
    move/from16 v11, v16

    .line 2551
    goto/16 :goto_6

    :cond_21
    const-string v11, "\u007fj}`\u007f{hk" #reported

    invoke-static {v11}, Lcom/inca/security/n;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v15, p0

    .end local p0    # "this":Lcom/inca/security/Core/AppGuardEngine;
    .restart local v15    # "this":Lcom/inca/security/Core/AppGuardEngine;
    goto/16 :goto_7

    .line 3160
    .end local v14    # "arg1":I
    .end local v15    # "this":Lcom/inca/security/Core/AppGuardEngine;
    :catchall_3
    move-exception v4

    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v4

    .line 2029
    :cond_22
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/inca/security/Core/AppGuardEngine;->iiiIIIiiII:Lcom/inca/security/AppGuard/AppGuardEventListener;

    if-eqz v5, :cond_23

    .line 3031
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/inca/security/Core/AppGuardEngine;->iiiIIIiiII:Lcom/inca/security/AppGuard/AppGuardEventListener;

    move-object/from16 v0, p3

    invoke-interface {v5, v4, v0}, Lcom/inca/security/AppGuard/AppGuardEventListener;->onDetected(I[B)V

    goto/16 :goto_9

    .line 2067
    :cond_23
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/inca/security/Core/AppGuardEngine;->iiiIIiIiiI:Landroid/os/Handler;

    if-eqz v5, :cond_10

    .line 3368
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/inca/security/Core/AppGuardEngine;->iiiIIiIiiI:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/inca/security/Core/AppGuardEngine;->iiiIIiIiiI:Landroid/os/Handler;

    move-object/from16 v0, p3

    invoke-virtual {v6, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_9

    :cond_24
    move/from16 v4, v17

    goto/16 :goto_8

    .restart local v14    # "arg1":I
    .restart local p0    # "this":Lcom/inca/security/Core/AppGuardEngine;
    :cond_25
    move/from16 v16, v4

    goto/16 :goto_5

    .end local v14    # "arg1":I
    .restart local p2    # "arg1":I
    :cond_26
    move v5, v7

    move-object v10, v6

    goto/16 :goto_3

    :cond_27
    move-object v10, v5

    move v5, v7

    goto/16 :goto_3

    :cond_28
    move-object v10, v5

    move v5, v7

    goto/16 :goto_3

    .line 1772
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 2035
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x3 -> :sswitch_0
        0x5 -> :sswitch_7
        0x6 -> :sswitch_2
        0x9 -> :sswitch_0
        0xe -> :sswitch_a
        0x15 -> :sswitch_4
        0x19 -> :sswitch_5
        0x1c -> :sswitch_8
        0x1d -> :sswitch_3
        0x21 -> :sswitch_6
        0x23 -> :sswitch_9
    .end sparse-switch
.end method

.method public iIiIIiIIIi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2903
    iget-object v0, p0, Lcom/inca/security/Core/AppGuardEngine;->IiiiIIiIII:Ljava/lang/String;

    return-object v0
.end method

.method public iIiIIiIIIi()V
    .locals 1

    .prologue
    .line 2504
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inca/security/Core/AppGuardEngine;->iIIiIIIIiI:Z

    .line 2220
    iget-object v0, p0, Lcom/inca/security/Core/AppGuardEngine;->IIIiIiiiII:Lcom/inca/security/nc;

    if-eqz v0, :cond_0

    .line 3350
    iget-object v0, p0, Lcom/inca/security/Core/AppGuardEngine;->IIIiIiiiII:Lcom/inca/security/nc;

    invoke-virtual {v0}, Lcom/inca/security/nc;->IiiiIIIIii()V

    .line 2948
    iget-object v0, p0, Lcom/inca/security/Core/AppGuardEngine;->IIIiIiiiII:Lcom/inca/security/nc;

    invoke-virtual {v0}, Lcom/inca/security/nc;->interrupt()V

    .line 2570
    :try_start_0
    iget-object v0, p0, Lcom/inca/security/Core/AppGuardEngine;->IIIiIiiiII:Lcom/inca/security/nc;

    invoke-virtual {v0}, Lcom/inca/security/nc;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2165
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/inca/security/Core/AppGuardEngine;->IIIIIIIllI()V

    .line 3380
    return-void

    .line 2915
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public iIiIIiIIIi(Z)V
    .locals 0
    .param p1, "arg0"    # Z

    .prologue
    .line 3014
    iput-boolean p1, p0, Lcom/inca/security/Core/AppGuardEngine;->IiIiIIIiIi:Z

    .line 3068
    return-void
.end method
