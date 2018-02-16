.class public Lcom/inca/security/Proxy/JNISoxProxy;
.super Ljava/lang/Object;
.source "lb"


# static fields
.field private static synthetic IIIIiiIiII:Lcom/inca/security/c;

.field private static synthetic IiIiIiiIii:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 165
    sput-object v0, Lcom/inca/security/Proxy/JNISoxProxy;->IiIiIiiIii:Landroid/content/Context;

    .line 124
    sput-object v0, Lcom/inca/security/Proxy/JNISoxProxy;->IIIIiiIiII:Lcom/inca/security/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 216
    sget-object v0, Lcom/inca/security/Proxy/JNISoxProxy;->IiIiIiiIii:Landroid/content/Context;

    return-object v0
.end method

.method public static getDeviceInfo()Lcom/inca/security/c;
    .locals 1

    .prologue
    .line 391
    sget-object v0, Lcom/inca/security/Proxy/JNISoxProxy;->IIIIiiIiII:Lcom/inca/security/c;

    return-object v0
.end method

.method public static loadSecureLibrary(Ljava/lang/String;)V
    .locals 12
    .param p0, "arg0"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x2

    const/4 v11, 0x1

    const/4 v7, 0x0

    .line 19
    sget-object v2, Lcom/inca/security/Proxy/JNISoxProxy;->IiIiIiiIii:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_1

    .line 46
    sget-object v2, Lcom/inca/security/Proxy/JNISoxProxy;->IIIIiiIiII:Lcom/inca/security/c;

    invoke-virtual {v2, v11}, Lcom/inca/security/c;->IiiiIIIIii(Z)V

    .line 136
    :cond_0
    :goto_0
    sget-object v2, Lcom/inca/security/Proxy/JNISoxProxy;->IIIIiiIiII:Lcom/inca/security/c;

    invoke-virtual {v2}, Lcom/inca/security/c;->IiiiIIIIii()Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v3

    .line 191
    :goto_1
    if-lez v2, :cond_4

    .line 158
    new-instance v2, Lcom/inca/security/Proxy/JNISoxProxy$1;

    invoke-direct {v2}, Lcom/inca/security/Proxy/JNISoxProxy$1;-><init>()V

    .line 150
    invoke-virtual {v2}, Lcom/inca/security/Proxy/JNISoxProxy$1;->start()V

    .line 51
    const-wide/16 v4, 0xfa0

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 191
    :goto_2
    add-int/lit8 v2, v3, -0x1

    move v3, v2

    goto :goto_1

    .line 181
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/inca/security/Proxy/JNISoxProxy;->IiIiIiiIii:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v7, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\u001b&]("

    invoke-static {v4}, Lcom/inca/security/ua;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 0
    sget-object v4, Lcom/inca/security/Proxy/JNISoxProxy;->IiIiIiiIii:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 96
    const-string v5, "-#\'<a2-#&#g"

    invoke-static {v5}, Lcom/inca/security/pb;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    aput-object v2, v6, v7

    aput-object p0, v6, v11

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 161
    const-string v5, "oGeX#VoGdG%"

    invoke-static {v5}, Lcom/inca/security/ua;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    aput-object v4, v6, v7

    aput-object p0, v6, v11

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 22
    const/4 v5, 0x3

    :try_start_1
    new-array v5, v5, [B

    .line 105
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    .line 120
    invoke-virtual {v6, v5}, Ljava/io/FileInputStream;->read([B)I

    .line 180
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 146
    aget-byte v6, v5, v7

    const/16 v7, 0x53

    if-ne v6, v7, :cond_3

    const/4 v6, 0x1

    aget-byte v6, v5, v6

    const/16 v7, 0x4f

    if-ne v6, v7, :cond_3

    const/4 v6, 0x2

    aget-byte v5, v5, v6

    const/16 v6, 0x58

    if-ne v5, v6, :cond_3

    .line 123
    new-instance v5, Lcom/inca/security/lb;

    sget-object v6, Lcom/inca/security/Proxy/JNISoxProxy;->IiIiIiiIii:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/inca/security/lb;-><init>(Landroid/content/Context;)V

    .line 166
    const/16 v6, 0x10

    new-array v6, v6, [B

    fill-array-data v6, :array_0

    .line 16
    const/16 v7, 0x14

    new-array v7, v7, [B

    const/4 v8, 0x0

    aput-byte v8, v7, v8

    const/4 v8, 0x1

    const/4 v9, 0x0

    aput-byte v9, v7, v8

    const/4 v8, 0x2

    const/4 v9, 0x0

    aput-byte v9, v7, v8

    const/4 v8, 0x3

    const/16 v9, 0x10

    aput-byte v9, v7, v8

    const/4 v8, 0x4

    const/16 v9, 0x9

    aput-byte v9, v7, v8

    const/4 v8, 0x5

    const/16 v9, -0x48

    aput-byte v9, v7, v8

    const/4 v8, 0x6

    const/4 v9, 0x5

    aput-byte v9, v7, v8

    const/4 v8, 0x7

    const/16 v9, 0x53

    aput-byte v9, v7, v8

    const/16 v8, 0x8

    const/16 v9, -0x5b

    aput-byte v9, v7, v8

    const/16 v8, 0x9

    const/16 v9, 0x26

    aput-byte v9, v7, v8

    const/16 v8, 0xa

    const/16 v9, 0x23

    aput-byte v9, v7, v8

    const/16 v8, 0xb

    const/16 v9, 0x43

    aput-byte v9, v7, v8

    const/16 v8, 0xc

    const/16 v9, -0x72

    aput-byte v9, v7, v8

    const/16 v8, 0xd

    const/16 v9, 0x12

    aput-byte v9, v7, v8

    const/16 v8, 0xe

    const/16 v9, 0x1d

    aput-byte v9, v7, v8

    const/16 v8, 0xf

    const/16 v9, -0x21

    aput-byte v9, v7, v8

    const/16 v8, 0x10

    const/16 v9, 0x24

    aput-byte v9, v7, v8

    const/16 v8, 0x11

    const/16 v9, -0x43

    aput-byte v9, v7, v8

    const/16 v8, 0x12

    const/4 v9, -0x1

    aput-byte v9, v7, v8

    const/16 v8, 0x13

    const/16 v9, 0x6e

    aput-byte v9, v7, v8

    .line 141
    const/16 v8, 0x12c

    new-array v8, v8, [B

    const/4 v9, 0x0

    aput-byte v9, v8, v9

    const/4 v9, 0x1

    const/4 v10, 0x0

    aput-byte v10, v8, v9

    const/4 v9, 0x2

    const/4 v10, 0x1

    aput-byte v10, v8, v9

    const/4 v9, 0x3

    const/16 v10, 0x26

    aput-byte v10, v8, v9

    const/4 v9, 0x4

    const/4 v10, -0x6

    aput-byte v10, v8, v9

    const/4 v9, 0x5

    const/16 v10, 0x2f

    aput-byte v10, v8, v9

    const/4 v9, 0x6

    const/16 v10, -0x1e

    aput-byte v10, v8, v9

    const/4 v9, 0x7

    const/16 v10, 0x55

    aput-byte v10, v8, v9

    const/16 v9, 0x8

    const/16 v10, 0x31

    aput-byte v10, v8, v9

    const/16 v9, 0x9

    const/16 v10, 0x2e

    aput-byte v10, v8, v9

    const/16 v9, 0xa

    const/16 v10, -0x76

    aput-byte v10, v8, v9

    const/16 v9, 0xb

    const/16 v10, -0x3e

    aput-byte v10, v8, v9

    const/16 v9, 0xc

    const/16 v10, 0x24

    aput-byte v10, v8, v9

    const/16 v9, 0xd

    const/16 v10, 0xe

    aput-byte v10, v8, v9

    const/16 v9, 0xe

    const/16 v10, -0x71

    aput-byte v10, v8, v9

    const/16 v9, 0xf

    const/16 v10, -0x4d

    aput-byte v10, v8, v9

    const/16 v9, 0x10

    const/16 v10, -0x75

    aput-byte v10, v8, v9

    const/16 v9, 0x11

    const/16 v10, 0x47

    aput-byte v10, v8, v9

    const/16 v9, 0x12

    const/16 v10, -0x56

    aput-byte v10, v8, v9

    const/16 v9, 0x13

    const/4 v10, -0x2

    aput-byte v10, v8, v9

    const/16 v9, 0x14

    const/4 v10, -0x1

    aput-byte v10, v8, v9

    const/16 v9, 0x15

    const/16 v10, 0x34

    aput-byte v10, v8, v9

    const/16 v9, 0x16

    const/16 v10, 0x23

    aput-byte v10, v8, v9

    const/16 v9, 0x17

    const/16 v10, 0x16

    aput-byte v10, v8, v9

    const/16 v9, 0x18

    const/16 v10, 0x5b

    aput-byte v10, v8, v9

    const/16 v9, 0x19

    const/16 v10, 0x3a

    aput-byte v10, v8, v9

    const/16 v9, 0x1a

    const/16 v10, 0x2a

    aput-byte v10, v8, v9

    const/16 v9, 0x1b

    const/16 v10, -0x24

    aput-byte v10, v8, v9

    const/16 v9, 0x1c

    const/16 v10, 0x65

    aput-byte v10, v8, v9

    const/16 v9, 0x1d

    const/16 v10, 0x2d

    aput-byte v10, v8, v9

    const/16 v9, 0x1e

    const/16 v10, 0x5d

    aput-byte v10, v8, v9

    const/16 v9, 0x1f

    const/16 v10, 0x4c

    aput-byte v10, v8, v9

    const/16 v9, 0x20

    const/16 v10, -0x1c

    aput-byte v10, v8, v9

    const/16 v9, 0x21

    const/16 v10, 0x48

    aput-byte v10, v8, v9

    const/16 v9, 0x22

    const/16 v10, 0x16

    aput-byte v10, v8, v9

    const/16 v9, 0x23

    const/16 v10, -0x78

    aput-byte v10, v8, v9

    const/16 v9, 0x24

    const/16 v10, 0xd

    aput-byte v10, v8, v9

    const/16 v9, 0x25

    const/16 v10, -0x74

    aput-byte v10, v8, v9

    const/16 v9, 0x26

    const/16 v10, -0x17

    aput-byte v10, v8, v9

    const/16 v9, 0x27

    const/16 v10, 0x76

    aput-byte v10, v8, v9

    const/16 v9, 0x28

    const/16 v10, -0x75

    aput-byte v10, v8, v9

    const/16 v9, 0x29

    const/16 v10, 0x33

    aput-byte v10, v8, v9

    const/16 v9, 0x2a

    const/16 v10, 0x4f

    aput-byte v10, v8, v9

    const/16 v9, 0x2b

    const/4 v10, -0x4

    aput-byte v10, v8, v9

    const/16 v9, 0x2c

    const/16 v10, 0x27

    aput-byte v10, v8, v9

    const/16 v9, 0x2d

    const/16 v10, 0x5d

    aput-byte v10, v8, v9

    const/16 v9, 0x2e

    const/16 v10, -0x38

    aput-byte v10, v8, v9

    const/16 v9, 0x2f

    const/16 v10, 0x44

    aput-byte v10, v8, v9

    const/16 v9, 0x30

    const/16 v10, -0x2c

    aput-byte v10, v8, v9

    const/16 v9, 0x31

    const/16 v10, 0x72

    aput-byte v10, v8, v9

    const/16 v9, 0x32

    const/16 v10, -0xf

    aput-byte v10, v8, v9

    const/16 v9, 0x33

    const/16 v10, 0x2b

    aput-byte v10, v8, v9

    const/16 v9, 0x34

    const/16 v10, -0x80

    aput-byte v10, v8, v9

    const/16 v9, 0x35

    const/16 v10, -0x5e

    aput-byte v10, v8, v9

    const/16 v9, 0x36

    const/16 v10, -0x56

    aput-byte v10, v8, v9

    const/16 v9, 0x37

    const/16 v10, 0xa

    aput-byte v10, v8, v9

    const/16 v9, 0x38

    const/16 v10, 0x2b

    aput-byte v10, v8, v9

    const/16 v9, 0x39

    const/16 v10, 0x4d

    aput-byte v10, v8, v9

    const/16 v9, 0x3a

    const/16 v10, 0x12

    aput-byte v10, v8, v9

    const/16 v9, 0x3b

    const/16 v10, -0x38

    aput-byte v10, v8, v9

    const/16 v9, 0x3c

    const/16 v10, -0x63

    aput-byte v10, v8, v9

    const/16 v9, 0x3d

    const/16 v10, -0x63

    aput-byte v10, v8, v9

    const/16 v9, 0x3e

    const/16 v10, -0x32

    aput-byte v10, v8, v9

    const/16 v9, 0x3f

    const/16 v10, 0xb

    aput-byte v10, v8, v9

    const/16 v9, 0x40

    const/4 v10, 0x4

    aput-byte v10, v8, v9

    const/16 v9, 0x41

    const/4 v10, -0x2

    aput-byte v10, v8, v9

    const/16 v9, 0x42

    const/16 v10, 0x5b

    aput-byte v10, v8, v9

    const/16 v9, 0x43

    const/16 v10, -0x10

    aput-byte v10, v8, v9

    const/16 v9, 0x44

    const/16 v10, 0x27

    aput-byte v10, v8, v9

    const/16 v9, 0x45

    const/16 v10, -0x52

    aput-byte v10, v8, v9

    const/16 v9, 0x46

    const/16 v10, -0x38

    aput-byte v10, v8, v9

    const/16 v9, 0x47

    const/16 v10, 0x6b

    aput-byte v10, v8, v9

    const/16 v9, 0x48

    const/16 v10, 0x33

    aput-byte v10, v8, v9

    const/16 v9, 0x49

    const/16 v10, 0x50

    aput-byte v10, v8, v9

    const/16 v9, 0x4a

    const/16 v10, 0x23

    aput-byte v10, v8, v9

    const/16 v9, 0x4b

    const/16 v10, 0x10

    aput-byte v10, v8, v9

    const/16 v9, 0x4c

    const/16 v10, -0x10

    aput-byte v10, v8, v9

    const/16 v9, 0x4d

    const/16 v10, 0x10

    aput-byte v10, v8, v9

    const/16 v9, 0x4e

    const/16 v10, 0x19

    aput-byte v10, v8, v9

    const/16 v9, 0x4f

    const/16 v10, -0x1c

    aput-byte v10, v8, v9

    const/16 v9, 0x50

    const/16 v10, -0x64

    aput-byte v10, v8, v9

    const/16 v9, 0x51

    const/16 v10, -0x43

    aput-byte v10, v8, v9

    const/16 v9, 0x52

    const/16 v10, 0x68

    aput-byte v10, v8, v9

    const/16 v9, 0x53

    const/16 v10, -0x3b

    aput-byte v10, v8, v9

    const/16 v9, 0x54

    const/16 v10, -0x68

    aput-byte v10, v8, v9

    const/16 v9, 0x55

    const/16 v10, 0x3a

    aput-byte v10, v8, v9

    const/16 v9, 0x56

    const/16 v10, 0x59

    aput-byte v10, v8, v9

    const/16 v9, 0x57

    const/16 v10, -0x78

    aput-byte v10, v8, v9

    const/16 v9, 0x58

    const/16 v10, 0x70

    aput-byte v10, v8, v9

    const/16 v9, 0x59

    const/16 v10, 0x78

    aput-byte v10, v8, v9

    const/16 v9, 0x5a

    const/16 v10, -0x67

    aput-byte v10, v8, v9

    const/16 v9, 0x5b

    const/16 v10, 0x55

    aput-byte v10, v8, v9

    const/16 v9, 0x5c

    const/16 v10, -0x1d

    aput-byte v10, v8, v9

    const/16 v9, 0x5d

    const/16 v10, 0x9

    aput-byte v10, v8, v9

    const/16 v9, 0x5e

    const/16 v10, 0xd

    aput-byte v10, v8, v9

    const/16 v9, 0x5f

    const/16 v10, -0x4a

    aput-byte v10, v8, v9

    const/16 v9, 0x60

    const/16 v10, -0x4a

    aput-byte v10, v8, v9

    const/16 v9, 0x61

    const/16 v10, 0x64

    aput-byte v10, v8, v9

    const/16 v9, 0x62

    const/16 v10, -0x63

    aput-byte v10, v8, v9

    const/16 v9, 0x63

    const/16 v10, 0x34

    aput-byte v10, v8, v9

    const/16 v9, 0x64

    const/16 v10, -0x27

    aput-byte v10, v8, v9

    const/16 v9, 0x65

    const/16 v10, -0x14

    aput-byte v10, v8, v9

    const/16 v9, 0x66

    const/16 v10, -0x58

    aput-byte v10, v8, v9

    const/16 v9, 0x67

    const/16 v10, 0x1c

    aput-byte v10, v8, v9

    const/16 v9, 0x68

    const/16 v10, -0x2b

    aput-byte v10, v8, v9

    const/16 v9, 0x69

    const/16 v10, -0x15

    aput-byte v10, v8, v9

    const/16 v9, 0x6a

    const/16 v10, -0x64

    aput-byte v10, v8, v9

    const/16 v9, 0x6b

    const/16 v10, 0x32

    aput-byte v10, v8, v9

    const/16 v9, 0x6c

    const/16 v10, 0x75

    aput-byte v10, v8, v9

    const/16 v9, 0x6d

    const/16 v10, -0x47

    aput-byte v10, v8, v9

    const/16 v9, 0x6e

    const/16 v10, 0x6c

    aput-byte v10, v8, v9

    const/16 v9, 0x6f

    const/16 v10, -0x75

    aput-byte v10, v8, v9

    const/16 v9, 0x70

    const/16 v10, -0x77

    aput-byte v10, v8, v9

    const/16 v9, 0x71

    const/16 v10, -0x70

    aput-byte v10, v8, v9

    const/16 v9, 0x72

    const/16 v10, -0x77

    aput-byte v10, v8, v9

    const/16 v9, 0x73

    const/16 v10, 0x4f

    aput-byte v10, v8, v9

    const/16 v9, 0x74

    const/16 v10, -0x59

    aput-byte v10, v8, v9

    const/16 v9, 0x75

    const/16 v10, 0x60

    aput-byte v10, v8, v9

    const/16 v9, 0x76

    const/16 v10, -0x62

    aput-byte v10, v8, v9

    const/16 v9, 0x77

    const/16 v10, -0x10

    aput-byte v10, v8, v9

    const/16 v9, 0x78

    const/16 v10, -0x2f

    aput-byte v10, v8, v9

    const/16 v9, 0x79

    const/16 v10, 0x6a

    aput-byte v10, v8, v9

    const/16 v9, 0x7a

    const/16 v10, -0x6e

    aput-byte v10, v8, v9

    const/16 v9, 0x7b

    const/16 v10, -0x59

    aput-byte v10, v8, v9

    const/16 v9, 0x7c

    const/16 v10, 0x7a

    aput-byte v10, v8, v9

    const/16 v9, 0x7d

    const/16 v10, -0x3f

    aput-byte v10, v8, v9

    const/16 v9, 0x7e

    const/16 v10, 0x4f

    aput-byte v10, v8, v9

    const/16 v9, 0x7f

    const/16 v10, 0x34

    aput-byte v10, v8, v9

    const/16 v9, 0x80

    const/16 v10, 0x15

    aput-byte v10, v8, v9

    const/16 v9, 0x81

    const/16 v10, -0x40

    aput-byte v10, v8, v9

    const/16 v9, 0x82

    const/16 v10, -0x45

    aput-byte v10, v8, v9

    const/16 v9, 0x83

    const/16 v10, -0x7c

    aput-byte v10, v8, v9

    const/16 v9, 0x84

    const/16 v10, 0x11

    aput-byte v10, v8, v9

    const/16 v9, 0x85

    const/16 v10, 0x60

    aput-byte v10, v8, v9

    const/16 v9, 0x86

    const/16 v10, -0x18

    aput-byte v10, v8, v9

    const/16 v9, 0x87

    const/16 v10, 0x50

    aput-byte v10, v8, v9

    const/16 v9, 0x88

    const/16 v10, 0x39

    aput-byte v10, v8, v9

    const/16 v9, 0x89

    const/16 v10, 0x27

    aput-byte v10, v8, v9

    const/16 v9, 0x8a

    const/16 v10, -0x68

    aput-byte v10, v8, v9

    const/16 v9, 0x8b

    const/16 v10, 0x5c

    aput-byte v10, v8, v9

    const/16 v9, 0x8c

    const/16 v10, 0x70

    aput-byte v10, v8, v9

    const/16 v9, 0x8d

    const/16 v10, -0x57

    aput-byte v10, v8, v9

    const/16 v9, 0x8e

    const/16 v10, 0xa

    aput-byte v10, v8, v9

    const/16 v9, 0x8f

    const/16 v10, 0x62

    aput-byte v10, v8, v9

    const/16 v9, 0x90

    const/16 v10, 0x37

    aput-byte v10, v8, v9

    const/16 v9, 0x91

    const/4 v10, 0x2

    aput-byte v10, v8, v9

    const/16 v9, 0x92

    const/16 v10, 0x51

    aput-byte v10, v8, v9

    const/16 v9, 0x93

    const/16 v10, 0x2f

    aput-byte v10, v8, v9

    const/16 v9, 0x94

    const/16 v10, 0x9

    aput-byte v10, v8, v9

    const/16 v9, 0x95

    const/16 v10, -0x25

    aput-byte v10, v8, v9

    const/16 v9, 0x96

    const/16 v10, 0x2e

    aput-byte v10, v8, v9

    const/16 v9, 0x97

    const/16 v10, -0x1f

    aput-byte v10, v8, v9

    const/16 v9, 0x98

    const/16 v10, -0x2d

    aput-byte v10, v8, v9

    const/16 v9, 0x99

    const/16 v10, -0x58

    aput-byte v10, v8, v9

    const/16 v9, 0x9a

    const/16 v10, -0x76

    aput-byte v10, v8, v9

    const/16 v9, 0x9b

    const/16 v10, 0x5d

    aput-byte v10, v8, v9

    const/16 v9, 0x9c

    const/16 v10, -0x46

    aput-byte v10, v8, v9

    const/16 v9, 0x9d

    const/16 v10, 0x62

    aput-byte v10, v8, v9

    const/16 v9, 0x9e

    const/16 v10, 0x19

    aput-byte v10, v8, v9

    const/16 v9, 0x9f

    const/16 v10, -0x43

    aput-byte v10, v8, v9

    const/16 v9, 0xa0

    const/16 v10, 0x3c

    aput-byte v10, v8, v9

    const/16 v9, 0xa1

    const/16 v10, -0x41

    aput-byte v10, v8, v9

    const/16 v9, 0xa2

    const/16 v10, 0x13

    aput-byte v10, v8, v9

    const/16 v9, 0xa3

    const/16 v10, 0x19

    aput-byte v10, v8, v9

    const/16 v9, 0xa4

    const/16 v10, 0x30

    aput-byte v10, v8, v9

    const/16 v9, 0xa5

    const/4 v10, -0x6

    aput-byte v10, v8, v9

    const/16 v9, 0xa6

    const/16 v10, 0x14

    aput-byte v10, v8, v9

    const/16 v9, 0xa7

    const/16 v10, 0x51

    aput-byte v10, v8, v9

    const/16 v9, 0xa8

    const/16 v10, 0x41

    aput-byte v10, v8, v9

    const/16 v9, 0xa9

    const/16 v10, 0x23

    aput-byte v10, v8, v9

    const/16 v9, 0xaa

    const/16 v10, -0x76

    aput-byte v10, v8, v9

    const/16 v9, 0xab

    const/16 v10, 0x4a

    aput-byte v10, v8, v9

    const/16 v9, 0xac

    const/16 v10, -0x51

    aput-byte v10, v8, v9

    const/16 v9, 0xad

    const/16 v10, -0x49

    aput-byte v10, v8, v9

    const/16 v9, 0xae

    const/16 v10, 0x15

    aput-byte v10, v8, v9

    const/16 v9, 0xaf

    const/16 v10, 0x3c

    aput-byte v10, v8, v9

    const/16 v9, 0xb0

    const/16 v10, 0x64

    aput-byte v10, v8, v9

    const/16 v9, 0xb1

    const/16 v10, -0x1d

    aput-byte v10, v8, v9

    const/16 v9, 0xb2

    const/16 v10, -0x7c

    aput-byte v10, v8, v9

    const/16 v9, 0xb3

    const/16 v10, -0x11

    aput-byte v10, v8, v9

    const/16 v9, 0xb4

    const/16 v10, -0x7b

    aput-byte v10, v8, v9

    const/16 v9, 0xb5

    const/16 v10, -0x36

    aput-byte v10, v8, v9

    const/16 v9, 0xb6

    const/16 v10, -0x19

    aput-byte v10, v8, v9

    const/16 v9, 0xb7

    const/16 v10, -0xd

    aput-byte v10, v8, v9

    const/16 v9, 0xb8

    const/16 v10, -0x19

    aput-byte v10, v8, v9

    const/16 v9, 0xb9

    const/16 v10, -0x32

    aput-byte v10, v8, v9

    const/16 v9, 0xba

    const/16 v10, -0x3e

    aput-byte v10, v8, v9

    const/16 v9, 0xbb

    const/16 v10, -0x2f

    aput-byte v10, v8, v9

    const/16 v9, 0xbc

    const/16 v10, 0x3a

    aput-byte v10, v8, v9

    const/16 v9, 0xbd

    const/16 v10, -0x24

    aput-byte v10, v8, v9

    const/16 v9, 0xbe

    const/16 v10, -0x59

    aput-byte v10, v8, v9

    const/16 v9, 0xbf

    const/16 v10, -0x31

    aput-byte v10, v8, v9

    const/16 v9, 0xc0

    const/16 v10, -0x5f

    aput-byte v10, v8, v9

    const/16 v9, 0xc1

    const/16 v10, 0x46

    aput-byte v10, v8, v9

    const/16 v9, 0xc2

    const/16 v10, -0x39

    aput-byte v10, v8, v9

    const/16 v9, 0xc3

    const/16 v10, -0x7b

    aput-byte v10, v8, v9

    const/16 v9, 0xc4

    const/16 v10, 0x3f

    aput-byte v10, v8, v9

    const/16 v9, 0xc5

    const/16 v10, -0x42

    aput-byte v10, v8, v9

    const/16 v9, 0xc6

    const/16 v10, -0x28

    aput-byte v10, v8, v9

    const/16 v9, 0xc7

    const/16 v10, 0x37

    aput-byte v10, v8, v9

    const/16 v9, 0xc8

    const/16 v10, -0x7d

    aput-byte v10, v8, v9

    const/16 v9, 0xc9

    const/16 v10, -0x28

    aput-byte v10, v8, v9

    const/16 v9, 0xca

    const/16 v10, 0x13

    aput-byte v10, v8, v9

    const/16 v9, 0xcb

    const/16 v10, 0x10

    aput-byte v10, v8, v9

    const/16 v9, 0xcc

    const/16 v10, -0x27

    aput-byte v10, v8, v9

    const/16 v9, 0xcd

    const/16 v10, -0x2f

    aput-byte v10, v8, v9

    const/16 v9, 0xce

    const/16 v10, 0x61

    aput-byte v10, v8, v9

    const/16 v9, 0xcf

    const/16 v10, -0x48

    aput-byte v10, v8, v9

    const/16 v9, 0xd0

    const/16 v10, 0x53

    aput-byte v10, v8, v9

    const/16 v9, 0xd1

    const/16 v10, -0x54

    aput-byte v10, v8, v9

    const/16 v9, 0xd2

    const/16 v10, 0x21

    aput-byte v10, v8, v9

    const/16 v9, 0xd3

    const/16 v10, 0x47

    aput-byte v10, v8, v9

    const/16 v9, 0xd4

    const/4 v10, -0x6

    aput-byte v10, v8, v9

    const/16 v9, 0xd5

    const/16 v10, 0xc

    aput-byte v10, v8, v9

    const/16 v9, 0xd6

    const/16 v10, 0x7a

    aput-byte v10, v8, v9

    const/16 v9, 0xd7

    const/16 v10, -0x63

    aput-byte v10, v8, v9

    const/16 v9, 0xd8

    const/16 v10, 0x35

    aput-byte v10, v8, v9

    const/16 v9, 0xd9

    const/4 v10, 0x5

    aput-byte v10, v8, v9

    const/16 v9, 0xda

    const/16 v10, 0x78

    aput-byte v10, v8, v9

    const/16 v9, 0xdb

    const/16 v10, 0x72

    aput-byte v10, v8, v9

    const/16 v9, 0xdc

    const/16 v10, 0x6c

    aput-byte v10, v8, v9

    const/16 v9, 0xdd

    const/4 v10, -0x8

    aput-byte v10, v8, v9

    const/16 v9, 0xde

    const/16 v10, -0x64

    aput-byte v10, v8, v9

    const/16 v9, 0xdf

    const/16 v10, 0x27

    aput-byte v10, v8, v9

    const/16 v9, 0xe0

    const/16 v10, -0x4e

    aput-byte v10, v8, v9

    const/16 v9, 0xe1

    const/16 v10, 0x7e

    aput-byte v10, v8, v9

    const/16 v9, 0xe2

    const/16 v10, 0x2e

    aput-byte v10, v8, v9

    const/16 v9, 0xe3

    const/16 v10, 0x6e

    aput-byte v10, v8, v9

    const/16 v9, 0xe4

    const/16 v10, -0x7c

    aput-byte v10, v8, v9

    const/16 v9, 0xe5

    const/16 v10, -0x6b

    aput-byte v10, v8, v9

    const/16 v9, 0xe6

    const/16 v10, 0x73

    aput-byte v10, v8, v9

    const/16 v9, 0xe7

    const/16 v10, 0x46

    aput-byte v10, v8, v9

    const/16 v9, 0xe8

    const/16 v10, 0x6a

    aput-byte v10, v8, v9

    const/16 v9, 0xe9

    const/16 v10, 0x3b

    aput-byte v10, v8, v9

    const/16 v9, 0xea

    const/16 v10, -0x21

    aput-byte v10, v8, v9

    const/16 v9, 0xeb

    const/16 v10, 0x36

    aput-byte v10, v8, v9

    const/16 v9, 0xec

    const/16 v10, 0x71

    aput-byte v10, v8, v9

    const/16 v9, 0xed

    const/16 v10, 0x7d

    aput-byte v10, v8, v9

    const/16 v9, 0xee

    const/16 v10, -0x21

    aput-byte v10, v8, v9

    const/16 v9, 0xef

    const/16 v10, 0x7b

    aput-byte v10, v8, v9

    const/16 v9, 0xf0

    const/16 v10, -0x80

    aput-byte v10, v8, v9

    const/16 v9, 0xf1

    const/16 v10, 0xb

    aput-byte v10, v8, v9

    const/16 v9, 0xf2

    const/16 v10, 0x2b

    aput-byte v10, v8, v9

    const/16 v9, 0xf3

    const/16 v10, 0x6e

    aput-byte v10, v8, v9

    const/16 v9, 0xf4

    const/16 v10, 0x7e

    aput-byte v10, v8, v9

    const/16 v9, 0xf5

    const/16 v10, -0x6f

    aput-byte v10, v8, v9

    const/16 v9, 0xf6

    const/4 v10, -0x1

    aput-byte v10, v8, v9

    const/16 v9, 0xf7

    const/16 v10, -0x6e

    aput-byte v10, v8, v9

    const/16 v9, 0xf8

    const/16 v10, -0x38

    aput-byte v10, v8, v9

    const/16 v9, 0xf9

    const/16 v10, -0x38

    aput-byte v10, v8, v9

    const/16 v9, 0xfa

    const/16 v10, 0x56

    aput-byte v10, v8, v9

    const/16 v9, 0xfb

    const/16 v10, 0x18

    aput-byte v10, v8, v9

    const/16 v9, 0xfc

    const/16 v10, 0x4e

    aput-byte v10, v8, v9

    const/16 v9, 0xfd

    const/16 v10, 0x78

    aput-byte v10, v8, v9

    const/16 v9, 0xfe

    const/16 v10, -0x7e

    aput-byte v10, v8, v9

    const/16 v9, 0xff

    const/4 v10, 0x4

    aput-byte v10, v8, v9

    const/16 v9, 0x100

    const/16 v10, -0xd

    aput-byte v10, v8, v9

    const/16 v9, 0x101

    const/16 v10, 0x7a

    aput-byte v10, v8, v9

    const/16 v9, 0x102

    const/16 v10, 0x35

    aput-byte v10, v8, v9

    const/16 v9, 0x103

    const/16 v10, 0x16

    aput-byte v10, v8, v9

    const/16 v9, 0x104

    const/4 v10, -0x3

    aput-byte v10, v8, v9

    const/16 v9, 0x105

    const/16 v10, 0x1a

    aput-byte v10, v8, v9

    const/16 v9, 0x106

    const/16 v10, -0x1f

    aput-byte v10, v8, v9

    const/16 v9, 0x107

    const/16 v10, -0x6c

    aput-byte v10, v8, v9

    const/16 v9, 0x108

    const/16 v10, 0x1a

    aput-byte v10, v8, v9

    const/16 v9, 0x109

    const/16 v10, 0x50

    aput-byte v10, v8, v9

    const/16 v9, 0x10a

    const/16 v10, -0x38

    aput-byte v10, v8, v9

    const/16 v9, 0x10b

    const/16 v10, 0x34

    aput-byte v10, v8, v9

    const/16 v9, 0x10c

    const/16 v10, -0xc

    aput-byte v10, v8, v9

    const/16 v9, 0x10d

    const/16 v10, -0x6c

    aput-byte v10, v8, v9

    const/16 v9, 0x10e

    const/16 v10, 0x13

    aput-byte v10, v8, v9

    const/16 v9, 0x10f

    const/16 v10, -0x4d

    aput-byte v10, v8, v9

    const/16 v9, 0x110

    const/16 v10, -0xc

    aput-byte v10, v8, v9

    const/16 v9, 0x111

    const/16 v10, -0x51

    aput-byte v10, v8, v9

    const/16 v9, 0x112

    const/16 v10, -0x45

    aput-byte v10, v8, v9

    const/16 v9, 0x113

    const/16 v10, 0x6e

    aput-byte v10, v8, v9

    const/16 v9, 0x114

    const/16 v10, -0x6c

    aput-byte v10, v8, v9

    const/16 v9, 0x115

    const/16 v10, 0x73

    aput-byte v10, v8, v9

    const/16 v9, 0x116

    const/16 v10, 0x13

    aput-byte v10, v8, v9

    const/16 v9, 0x117

    const/16 v10, 0x8

    aput-byte v10, v8, v9

    const/16 v9, 0x118

    const/16 v10, 0x34

    aput-byte v10, v8, v9

    const/16 v9, 0x119

    const/16 v10, -0x20

    aput-byte v10, v8, v9

    const/16 v9, 0x11a

    const/16 v10, 0x67

    aput-byte v10, v8, v9

    const/16 v9, 0x11b

    const/16 v10, -0x9

    aput-byte v10, v8, v9

    const/16 v9, 0x11c

    const/16 v10, 0x61

    aput-byte v10, v8, v9

    const/16 v9, 0x11d

    const/16 v10, -0x39

    aput-byte v10, v8, v9

    const/16 v9, 0x11e

    const/16 v10, 0x6e

    aput-byte v10, v8, v9

    const/16 v9, 0x11f

    const/16 v10, 0x31

    aput-byte v10, v8, v9

    const/16 v9, 0x120

    const/16 v10, 0x1e

    aput-byte v10, v8, v9

    const/16 v9, 0x121

    const/16 v10, -0x59

    aput-byte v10, v8, v9

    const/16 v9, 0x122

    const/16 v10, 0x48

    aput-byte v10, v8, v9

    const/16 v9, 0x123

    const/16 v10, -0x77

    aput-byte v10, v8, v9

    const/16 v9, 0x124

    const/16 v10, -0x60

    aput-byte v10, v8, v9

    const/16 v9, 0x125

    const/16 v10, -0xf

    aput-byte v10, v8, v9

    const/16 v9, 0x126

    const/16 v10, 0xc

    aput-byte v10, v8, v9

    const/16 v9, 0x127

    const/16 v10, 0x14

    aput-byte v10, v8, v9

    const/16 v9, 0x128

    const/16 v10, -0x67

    aput-byte v10, v8, v9

    const/16 v9, 0x129

    const/16 v10, 0x7a

    aput-byte v10, v8, v9

    const/16 v9, 0x12a

    const/16 v10, 0x37

    aput-byte v10, v8, v9

    const/16 v9, 0x12b

    const/16 v10, -0xf

    aput-byte v10, v8, v9

    .line 185
    invoke-virtual {v5, v6, v7, v8}, Lcom/inca/security/lb;->IiiiIIIIii([B[B[B)V

    .line 28
    const/4 v6, 0x0

    invoke-virtual {v5, v2, v4, v6}, Lcom/inca/security/lb;->iIiIIiIIIi(Ljava/lang/String;Ljava/lang/String;[B)Z

    .line 143
    invoke-static {v4}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 200
    sget-object v2, Lcom/inca/security/Proxy/JNISoxProxy;->IIIIiiIiII:Lcom/inca/security/c;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/inca/security/c;->IiiiIIIIii(Z)V

    .line 184
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 9
    :catch_0
    move-exception v2

    .line 102
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 76
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v5, "\u0015F\u001f[\u0000K"

    invoke-static {v5}, Lcom/inca/security/pb;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 29
    sget-object v2, Lcom/inca/security/Proxy/JNISoxProxy;->IIIIiiIiII:Lcom/inca/security/c;

    invoke-virtual {v2, v11}, Lcom/inca/security/c;->IiiiIIIIii(Z)V

    .line 147
    :cond_2
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto/16 :goto_0

    .line 127
    :cond_3
    :try_start_2
    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 77
    :cond_4
    new-instance v2, Landroid/content/Intent;

    const-string v3, "U$P8[#Pd]$@/Z>\u001a+W>]%Zdy\u000b}\u0004"

    invoke-static {v3}, Lcom/inca/security/ua;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 36
    const-string v3, "1f4z?a4&9f$m>|~k1|5o?z)&\u0018G\u001dM"

    invoke-static {v3}, Lcom/inca/security/pb;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    const/high16 v3, 0x14000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 177
    :try_start_3
    invoke-static {}, Lcom/inca/security/Proxy/JNISoxProxy;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 90
    :goto_3
    :try_start_4
    const-string v2, "U$P8[#Pd[9\u001a\u001aF%W/G9"

    invoke-static {v2}, Lcom/inca/security/ua;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 74
    const-string v2, "c9d<X\"g3m#{"

    invoke-static {v2}, Lcom/inca/security/pb;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v3, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 64
    const-string v2, "\'M\u001a]."

    invoke-static {v2}, Lcom/inca/security/ua;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Class;

    invoke-virtual {v3, v5, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 154
    const/4 v3, 0x0

    move-object v0, v3

    check-cast v0, [Ljava/lang/Object;

    move-object v2, v0

    invoke-virtual {v5, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 169
    const/4 v3, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-string v2, ":i&i~d1f7&\u0003q#|5e"

    invoke-static {v2}, Lcom/inca/security/pb;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 203
    const-string v3, "Q2]>"

    invoke-static {v3}, Lcom/inca/security/ua;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 149
    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 382
    :cond_5
    :goto_4
    return-void

    .line 193
    :catch_1
    move-exception v2

    goto/16 :goto_2

    .line 186
    :catch_2
    move-exception v2

    goto :goto_4

    .line 140
    :catch_3
    move-exception v2

    goto :goto_3

    .line 166
    :array_0
    .array-data 1
        0x3dt
        0x55t
        -0x4at
        0x65t
        -0x52t
        0x6dt
        -0x20t
        0x7at
        -0x28t
        0x44t
        0x66t
        -0x37t
        0x52t
        0x6ct
        -0x40t
        0xet
    .end array-data
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 1
    .param p0, "arg0"    # Landroid/content/Context;

    .prologue
    .line 228
    sput-object p0, Lcom/inca/security/Proxy/JNISoxProxy;->IiIiIiiIii:Landroid/content/Context;

    .line 378
    sget-object v0, Lcom/inca/security/Proxy/JNISoxProxy;->IiIiIiiIii:Landroid/content/Context;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/inca/security/Proxy/JNISoxProxy;->IIIIiiIiII:Lcom/inca/security/c;

    if-nez v0, :cond_0

    .line 252
    new-instance v0, Lcom/inca/security/c;

    invoke-direct {v0, p0}, Lcom/inca/security/c;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/inca/security/Proxy/JNISoxProxy;->IIIIiiIiII:Lcom/inca/security/c;

    .line 361
    :cond_0
    return-void
.end method
