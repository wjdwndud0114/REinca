.class public Lcom/inca/security/oc;
.super Ljava/lang/Object;
.source "fc"


# instance fields
.field private synthetic IIIIiiIiII:Ljava/util/jar/JarInputStream;

.field private synthetic IiIiIiiIii:Ldalvik/system/DexClassLoader;

.field private synthetic IiiIiiiIiI:[B


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 13
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 96
    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object v3, p0, Lcom/inca/security/oc;->IiiIiiiIiI:[B

    .line 106
    iput-object v1, p0, Lcom/inca/security/oc;->IiIiIiiIii:Ldalvik/system/DexClassLoader;

    .line 58
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "v"

    invoke-static {v4}, Lcom/inca/security/tb;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result v1

    .line 97
    new-array v4, v1, [B

    .line 120
    invoke-virtual {v3, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    .line 180
    if-eq v5, v1, :cond_0

    .line 195
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .end local p0    # "this":Lcom/inca/security/oc;
    :catch_0
    move-exception v1

    .line 167
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 179
    .restart local p0    # "this":Lcom/inca/security/oc;
    :cond_0
    :try_start_1
    new-instance v1, Lcom/inca/security/lb;

    invoke-direct {v1, p1}, Lcom/inca/security/lb;-><init>(Landroid/content/Context;)V

    .line 81
    const/16 v5, 0x126

    new-array v5, v5, [B

    const/4 v6, 0x0

    const/16 v7, 0x30

    aput-byte v7, v5, v6

    const/4 v6, 0x1

    const/16 v7, -0x7e

    aput-byte v7, v5, v6

    const/4 v6, 0x2

    const/4 v7, 0x1

    aput-byte v7, v5, v6

    const/4 v6, 0x3

    const/16 v7, 0x22

    aput-byte v7, v5, v6

    const/4 v6, 0x4

    const/16 v7, 0x30

    aput-byte v7, v5, v6

    const/4 v6, 0x5

    const/16 v7, 0xd

    aput-byte v7, v5, v6

    const/4 v6, 0x6

    aput-byte v6, v5, v6

    const/4 v6, 0x7

    const/16 v7, 0x9

    aput-byte v7, v5, v6

    const/16 v6, 0x8

    const/16 v7, 0x2a

    aput-byte v7, v5, v6

    const/16 v6, 0x9

    const/16 v7, -0x7a

    aput-byte v7, v5, v6

    const/16 v6, 0xa

    const/16 v7, 0x48

    aput-byte v7, v5, v6

    const/16 v6, 0xb

    const/16 v7, -0x7a

    aput-byte v7, v5, v6

    const/16 v6, 0xc

    const/16 v7, -0x9

    aput-byte v7, v5, v6

    const/16 v6, 0xd

    aput-byte v6, v5, v6

    const/16 v6, 0xe

    const/4 v7, 0x1

    aput-byte v7, v5, v6

    const/16 v6, 0xf

    const/4 v7, 0x1

    aput-byte v7, v5, v6

    const/16 v6, 0x10

    const/4 v7, 0x1

    aput-byte v7, v5, v6

    const/16 v6, 0x11

    const/4 v7, 0x5

    aput-byte v7, v5, v6

    const/16 v6, 0x12

    const/4 v7, 0x0

    aput-byte v7, v5, v6

    const/16 v6, 0x13

    const/4 v7, 0x3

    aput-byte v7, v5, v6

    const/16 v6, 0x14

    const/16 v7, -0x7e

    aput-byte v7, v5, v6

    const/16 v6, 0x15

    const/4 v7, 0x1

    aput-byte v7, v5, v6

    const/16 v6, 0x16

    const/16 v7, 0xf

    aput-byte v7, v5, v6

    const/16 v6, 0x17

    const/4 v7, 0x0

    aput-byte v7, v5, v6

    const/16 v6, 0x18

    const/16 v7, 0x30

    aput-byte v7, v5, v6

    const/16 v6, 0x19

    const/16 v7, -0x7e

    aput-byte v7, v5, v6

    const/16 v6, 0x1a

    const/4 v7, 0x1

    aput-byte v7, v5, v6

    const/16 v6, 0x1b

    const/16 v7, 0xa

    aput-byte v7, v5, v6

    const/16 v6, 0x1c

    const/4 v7, 0x2

    aput-byte v7, v5, v6

    const/16 v6, 0x1d

    const/16 v7, -0x7e

    aput-byte v7, v5, v6

    const/16 v6, 0x1e

    const/4 v7, 0x1

    aput-byte v7, v5, v6

    const/16 v6, 0x1f

    const/4 v7, 0x1

    aput-byte v7, v5, v6

    const/16 v6, 0x20

    const/4 v7, 0x0

    aput-byte v7, v5, v6

    const/16 v6, 0x21

    const/16 v7, -0x31

    aput-byte v7, v5, v6

    const/16 v6, 0x22

    const/16 v7, -0x59

    aput-byte v7, v5, v6

    const/16 v6, 0x23

    const/4 v7, 0x7

    aput-byte v7, v5, v6

    const/16 v6, 0x24

    const/4 v7, -0x7

    aput-byte v7, v5, v6

    const/16 v6, 0x25

    const/16 v7, 0x12

    aput-byte v7, v5, v6

    const/16 v6, 0x26

    const/16 v7, 0x6a

    aput-byte v7, v5, v6

    const/16 v6, 0x27

    const/16 v7, 0x6c

    aput-byte v7, v5, v6

    const/16 v6, 0x28

    const/16 v7, 0x3c

    aput-byte v7, v5, v6

    const/16 v6, 0x29

    const/16 v7, 0x65

    aput-byte v7, v5, v6

    const/16 v6, 0x2a

    const/16 v7, -0x28

    aput-byte v7, v5, v6

    const/16 v6, 0x2b

    const/16 v7, 0x52

    aput-byte v7, v5, v6

    const/16 v6, 0x2c

    const/16 v7, -0x47

    aput-byte v7, v5, v6

    const/16 v6, 0x2d

    const/16 v7, -0x29

    aput-byte v7, v5, v6

    const/16 v6, 0x2e

    const/16 v7, 0x49

    aput-byte v7, v5, v6

    const/16 v6, 0x2f

    const/16 v7, -0x7e

    aput-byte v7, v5, v6

    const/16 v6, 0x30

    const/16 v7, 0x41

    aput-byte v7, v5, v6

    const/16 v6, 0x31

    const/16 v7, 0x18

    aput-byte v7, v5, v6

    const/16 v6, 0x32

    const/16 v7, 0x11

    aput-byte v7, v5, v6

    const/16 v6, 0x33

    const/16 v7, -0x9

    aput-byte v7, v5, v6

    const/16 v6, 0x34

    const/16 v7, 0x76

    aput-byte v7, v5, v6

    const/16 v6, 0x35

    const/16 v7, 0x58

    aput-byte v7, v5, v6

    const/16 v6, 0x36

    const/16 v7, -0x34

    aput-byte v7, v5, v6

    const/16 v6, 0x37

    const/16 v7, 0x12

    aput-byte v7, v5, v6

    const/16 v6, 0x38

    const/16 v7, 0x61

    aput-byte v7, v5, v6

    const/16 v6, 0x39

    const/16 v7, -0x6f

    aput-byte v7, v5, v6

    const/16 v6, 0x3a

    const/16 v7, -0x2f

    aput-byte v7, v5, v6

    const/16 v6, 0x3b

    const/16 v7, -0x5f

    aput-byte v7, v5, v6

    const/16 v6, 0x3c

    const/16 v7, 0x13

    aput-byte v7, v5, v6

    const/16 v6, 0x3d

    const/16 v7, 0x77

    aput-byte v7, v5, v6

    const/16 v6, 0x3e

    const/16 v7, 0x15

    aput-byte v7, v5, v6

    const/16 v6, 0x3f

    const/16 v7, 0x61

    aput-byte v7, v5, v6

    const/16 v6, 0x40

    const/16 v7, 0x72

    aput-byte v7, v5, v6

    const/16 v6, 0x41

    const/16 v7, -0x35

    aput-byte v7, v5, v6

    const/16 v6, 0x42

    const/16 v7, -0x47

    aput-byte v7, v5, v6

    const/16 v6, 0x43

    const/16 v7, 0x22

    aput-byte v7, v5, v6

    const/16 v6, 0x44

    const/16 v7, -0x53

    aput-byte v7, v5, v6

    const/16 v6, 0x45

    const/16 v7, 0x5a

    aput-byte v7, v5, v6

    const/16 v6, 0x46

    const/16 v7, -0x59

    aput-byte v7, v5, v6

    const/16 v6, 0x47

    const/16 v7, -0x39

    aput-byte v7, v5, v6

    const/16 v6, 0x48

    const/16 v7, -0x1c

    aput-byte v7, v5, v6

    const/16 v6, 0x49

    const/16 v7, 0x14

    aput-byte v7, v5, v6

    const/16 v6, 0x4a

    const/16 v7, -0x53

    aput-byte v7, v5, v6

    const/16 v6, 0x4b

    const/16 v7, -0x11

    aput-byte v7, v5, v6

    const/16 v6, 0x4c

    const/16 v7, -0xd

    aput-byte v7, v5, v6

    const/16 v6, 0x4d

    const/16 v7, 0x43

    aput-byte v7, v5, v6

    const/16 v6, 0x4e

    const/16 v7, 0x26

    aput-byte v7, v5, v6

    const/16 v6, 0x4f

    const/16 v7, -0x56

    aput-byte v7, v5, v6

    const/16 v6, 0x50

    const/4 v7, -0x8

    aput-byte v7, v5, v6

    const/16 v6, 0x51

    const/16 v7, 0x75

    aput-byte v7, v5, v6

    const/16 v6, 0x52

    const/16 v7, -0x7b

    aput-byte v7, v5, v6

    const/16 v6, 0x53

    const/16 v7, -0x2c

    aput-byte v7, v5, v6

    const/16 v6, 0x54

    const/16 v7, 0x60

    aput-byte v7, v5, v6

    const/16 v6, 0x55

    const/16 v7, -0x4c

    aput-byte v7, v5, v6

    const/16 v6, 0x56

    const/16 v7, -0x50

    aput-byte v7, v5, v6

    const/16 v6, 0x57

    const/16 v7, -0x1e

    aput-byte v7, v5, v6

    const/16 v6, 0x58

    const/16 v7, -0x2e

    aput-byte v7, v5, v6

    const/16 v6, 0x59

    const/16 v7, -0x5c

    aput-byte v7, v5, v6

    const/16 v6, 0x5a

    const/16 v7, 0x44

    aput-byte v7, v5, v6

    const/16 v6, 0x5b

    const/16 v7, 0x1a

    aput-byte v7, v5, v6

    const/16 v6, 0x5c

    const/16 v7, -0x29

    aput-byte v7, v5, v6

    const/16 v6, 0x5d

    const/16 v7, -0x1e

    aput-byte v7, v5, v6

    const/16 v6, 0x5e

    const/16 v7, -0x26

    aput-byte v7, v5, v6

    const/16 v6, 0x5f

    const/4 v7, 0x6

    aput-byte v7, v5, v6

    const/16 v6, 0x60

    const/16 v7, 0x78

    aput-byte v7, v5, v6

    const/16 v6, 0x61

    const/16 v7, -0x1a

    aput-byte v7, v5, v6

    const/16 v6, 0x62

    const/16 v7, -0x3d

    aput-byte v7, v5, v6

    const/16 v6, 0x63

    const/16 v7, 0x48

    aput-byte v7, v5, v6

    const/16 v6, 0x64

    const/16 v7, 0x8

    aput-byte v7, v5, v6

    const/16 v6, 0x65

    const/16 v7, 0x48

    aput-byte v7, v5, v6

    const/16 v6, 0x66

    const/16 v7, -0x43

    aput-byte v7, v5, v6

    const/16 v6, 0x67

    const/16 v7, -0x31

    aput-byte v7, v5, v6

    const/16 v6, 0x68

    const/16 v7, 0x4f

    aput-byte v7, v5, v6

    const/16 v6, 0x69

    const/16 v7, 0x30

    aput-byte v7, v5, v6

    const/16 v6, 0x6a

    const/16 v7, 0x50

    aput-byte v7, v5, v6

    const/16 v6, 0x6b

    const/16 v7, 0x5f

    aput-byte v7, v5, v6

    const/16 v6, 0x6c

    const/16 v7, -0x35

    aput-byte v7, v5, v6

    const/16 v6, 0x6d

    const/16 v7, -0x42

    aput-byte v7, v5, v6

    const/16 v6, 0x6e

    const/16 v7, -0x54

    aput-byte v7, v5, v6

    const/16 v6, 0x6f

    const/16 v7, -0x49

    aput-byte v7, v5, v6

    const/16 v6, 0x70

    const/16 v7, 0x27

    aput-byte v7, v5, v6

    const/16 v6, 0x71

    const/16 v7, -0x61

    aput-byte v7, v5, v6

    const/16 v6, 0x72

    const/16 v7, -0x40

    aput-byte v7, v5, v6

    const/16 v6, 0x73

    const/16 v7, 0x51

    aput-byte v7, v5, v6

    const/16 v6, 0x74

    const/16 v7, 0x47

    aput-byte v7, v5, v6

    const/16 v6, 0x75

    const/16 v7, -0x64

    aput-byte v7, v5, v6

    const/16 v6, 0x76

    const/16 v7, 0x10

    aput-byte v7, v5, v6

    const/16 v6, 0x77

    const/16 v7, 0x30

    aput-byte v7, v5, v6

    const/16 v6, 0x78

    const/16 v7, -0x6b

    aput-byte v7, v5, v6

    const/16 v6, 0x79

    const/16 v7, 0x12

    aput-byte v7, v5, v6

    const/16 v6, 0x7a

    const/16 v7, 0x10

    aput-byte v7, v5, v6

    const/16 v6, 0x7b

    const/16 v7, -0x54

    aput-byte v7, v5, v6

    const/16 v6, 0x7c

    const/16 v7, 0x35

    aput-byte v7, v5, v6

    const/16 v6, 0x7d

    const/16 v7, 0x77

    aput-byte v7, v5, v6

    const/16 v6, 0x7e

    const/16 v7, 0x76

    aput-byte v7, v5, v6

    const/16 v6, 0x7f

    const/16 v7, 0xf

    aput-byte v7, v5, v6

    const/16 v6, 0x80

    const/16 v7, 0x3c

    aput-byte v7, v5, v6

    const/16 v6, 0x81

    const/16 v7, -0x57

    aput-byte v7, v5, v6

    const/16 v6, 0x82

    const/16 v7, -0xb

    aput-byte v7, v5, v6

    const/16 v6, 0x83

    const/16 v7, -0x2e

    aput-byte v7, v5, v6

    const/16 v6, 0x84

    const/16 v7, 0x39

    aput-byte v7, v5, v6

    const/16 v6, 0x85

    const/4 v7, 0x7

    aput-byte v7, v5, v6

    const/16 v6, 0x86

    const/16 v7, 0x5d

    aput-byte v7, v5, v6

    const/16 v6, 0x87

    const/16 v7, 0x7d

    aput-byte v7, v5, v6

    const/16 v6, 0x88

    const/16 v7, 0x20

    aput-byte v7, v5, v6

    const/16 v6, 0x89

    const/16 v7, -0x34

    aput-byte v7, v5, v6

    const/16 v6, 0x8a

    const/16 v7, 0x5e

    aput-byte v7, v5, v6

    const/16 v6, 0x8b

    const/4 v7, -0x4

    aput-byte v7, v5, v6

    const/16 v6, 0x8c

    const/16 v7, 0x62

    aput-byte v7, v5, v6

    const/16 v6, 0x8d

    const/4 v7, 0x4

    aput-byte v7, v5, v6

    const/16 v6, 0x8e

    const/16 v7, 0x2f

    aput-byte v7, v5, v6

    const/16 v6, 0x8f

    const/16 v7, 0x3c

    aput-byte v7, v5, v6

    const/16 v6, 0x90

    const/16 v7, 0x26

    aput-byte v7, v5, v6

    const/16 v6, 0x91

    const/16 v7, -0x72

    aput-byte v7, v5, v6

    const/16 v6, 0x92

    const/16 v7, 0x31

    aput-byte v7, v5, v6

    const/16 v6, 0x93

    const/16 v7, 0x56

    aput-byte v7, v5, v6

    const/16 v6, 0x94

    const/16 v7, -0x56

    aput-byte v7, v5, v6

    const/16 v6, 0x95

    const/16 v7, 0x1e

    aput-byte v7, v5, v6

    const/16 v6, 0x96

    const/16 v7, -0x76

    aput-byte v7, v5, v6

    const/16 v6, 0x97

    const/16 v7, -0x66

    aput-byte v7, v5, v6

    const/16 v6, 0x98

    const/16 v7, -0x3a

    aput-byte v7, v5, v6

    const/16 v6, 0x99

    const/4 v7, -0x2

    aput-byte v7, v5, v6

    const/16 v6, 0x9a

    const/16 v7, -0x28

    aput-byte v7, v5, v6

    const/16 v6, 0x9b

    const/16 v7, 0x61

    aput-byte v7, v5, v6

    const/16 v6, 0x9c

    const/16 v7, 0x4d

    aput-byte v7, v5, v6

    const/16 v6, 0x9d

    const/16 v7, -0x2f

    aput-byte v7, v5, v6

    const/16 v6, 0x9e

    const/16 v7, 0x6c

    aput-byte v7, v5, v6

    const/16 v6, 0x9f

    const/16 v7, -0x67

    aput-byte v7, v5, v6

    const/16 v6, 0xa0

    const/16 v7, 0xb

    aput-byte v7, v5, v6

    const/16 v6, 0xa1

    const/16 v7, -0x6e

    aput-byte v7, v5, v6

    const/16 v6, 0xa2

    const/16 v7, 0x22

    aput-byte v7, v5, v6

    const/16 v6, 0xa3

    const/16 v7, -0x1a

    aput-byte v7, v5, v6

    const/16 v6, 0xa4

    const/16 v7, -0x15

    aput-byte v7, v5, v6

    const/16 v6, 0xa5

    const/16 v7, 0x3d

    aput-byte v7, v5, v6

    const/16 v6, 0xa6

    const/4 v7, 0x6

    aput-byte v7, v5, v6

    const/16 v6, 0xa7

    const/16 v7, 0x69

    aput-byte v7, v5, v6

    const/16 v6, 0xa8

    const/16 v7, -0x4f

    aput-byte v7, v5, v6

    const/16 v6, 0xa9

    const/16 v7, -0x47

    aput-byte v7, v5, v6

    const/16 v6, 0xaa

    const/16 v7, 0x66

    aput-byte v7, v5, v6

    const/16 v6, 0xab

    const/16 v7, -0xf

    aput-byte v7, v5, v6

    const/16 v6, 0xac

    const/16 v7, 0x1a

    aput-byte v7, v5, v6

    const/16 v6, 0xad

    const/4 v7, -0x4

    aput-byte v7, v5, v6

    const/16 v6, 0xae

    const/16 v7, 0x6d

    aput-byte v7, v5, v6

    const/16 v6, 0xaf

    const/16 v7, -0x26

    aput-byte v7, v5, v6

    const/16 v6, 0xb0

    const/16 v7, 0x5e

    aput-byte v7, v5, v6

    const/16 v6, 0xb1

    const/16 v7, -0xe

    aput-byte v7, v5, v6

    const/16 v6, 0xb2

    const/16 v7, -0x4c

    aput-byte v7, v5, v6

    const/16 v6, 0xb3

    const/4 v7, 0x0

    aput-byte v7, v5, v6

    const/16 v6, 0xb4

    const/16 v7, 0x58

    aput-byte v7, v5, v6

    const/16 v6, 0xb5

    const/16 v7, -0x4f

    aput-byte v7, v5, v6

    const/16 v6, 0xb6

    const/16 v7, 0x21

    aput-byte v7, v5, v6

    const/16 v6, 0xb7

    const/16 v7, -0x2b

    aput-byte v7, v5, v6

    const/16 v6, 0xb8

    const/16 v7, -0x73

    aput-byte v7, v5, v6

    const/16 v6, 0xb9

    const/16 v7, 0x65

    aput-byte v7, v5, v6

    const/16 v6, 0xba

    const/16 v7, 0x7b

    aput-byte v7, v5, v6

    const/16 v6, 0xbb

    const/16 v7, -0x11

    aput-byte v7, v5, v6

    const/16 v6, 0xbc

    const/16 v7, -0xf

    aput-byte v7, v5, v6

    const/16 v6, 0xbd

    const/16 v7, -0xf

    aput-byte v7, v5, v6

    const/16 v6, 0xbe

    const/16 v7, -0xe

    aput-byte v7, v5, v6

    const/16 v6, 0xbf

    const/16 v7, 0x30

    aput-byte v7, v5, v6

    const/16 v6, 0xc0

    const/16 v7, -0x55

    aput-byte v7, v5, v6

    const/16 v6, 0xc1

    const/4 v7, 0x2

    aput-byte v7, v5, v6

    const/16 v6, 0xc2

    const/16 v7, 0x2a

    aput-byte v7, v5, v6

    const/16 v6, 0xc3

    const/16 v7, 0x16

    aput-byte v7, v5, v6

    const/16 v6, 0xc4

    const/16 v7, 0x60

    aput-byte v7, v5, v6

    const/16 v6, 0xc5

    const/16 v7, 0x52

    aput-byte v7, v5, v6

    const/16 v6, 0xc6

    const/16 v7, 0x2f

    aput-byte v7, v5, v6

    const/16 v6, 0xc7

    const/16 v7, 0x32

    aput-byte v7, v5, v6

    const/16 v6, 0xc8

    const/16 v7, 0x71

    aput-byte v7, v5, v6

    const/16 v6, 0xc9

    const/4 v7, 0x0

    aput-byte v7, v5, v6

    const/16 v6, 0xca

    const/16 v7, 0x7e

    aput-byte v7, v5, v6

    const/16 v6, 0xcb

    const/16 v7, -0x3c

    aput-byte v7, v5, v6

    const/16 v6, 0xcc

    const/4 v7, 0x4

    aput-byte v7, v5, v6

    const/16 v6, 0xcd

    const/16 v7, -0x6d

    aput-byte v7, v5, v6

    const/16 v6, 0xce

    const/16 v7, -0x17

    aput-byte v7, v5, v6

    const/16 v6, 0xcf

    const/16 v7, 0x69

    aput-byte v7, v5, v6

    const/16 v6, 0xd0

    const/16 v7, 0x16

    aput-byte v7, v5, v6

    const/16 v6, 0xd1

    const/16 v7, 0x59

    aput-byte v7, v5, v6

    const/16 v6, 0xd2

    const/16 v7, -0x13

    aput-byte v7, v5, v6

    const/16 v6, 0xd3

    const/16 v7, -0x26

    aput-byte v7, v5, v6

    const/16 v6, 0xd4

    const/16 v7, 0x2c

    aput-byte v7, v5, v6

    const/16 v6, 0xd5

    const/4 v7, 0x3

    aput-byte v7, v5, v6

    const/16 v6, 0xd6

    const/16 v7, 0x27

    aput-byte v7, v5, v6

    const/16 v6, 0xd7

    const/16 v7, 0x7d

    aput-byte v7, v5, v6

    const/16 v6, 0xd8

    const/16 v7, 0x5e

    aput-byte v7, v5, v6

    const/16 v6, 0xd9

    const/16 v7, -0x23

    aput-byte v7, v5, v6

    const/16 v6, 0xda

    const/16 v7, 0x4b

    aput-byte v7, v5, v6

    const/16 v6, 0xdb

    const/16 v7, -0x75

    aput-byte v7, v5, v6

    const/16 v6, 0xdc

    const/16 v7, -0x26

    aput-byte v7, v5, v6

    const/16 v6, 0xdd

    const/16 v7, 0x2d

    aput-byte v7, v5, v6

    const/16 v6, 0xde

    const/16 v7, -0x61

    aput-byte v7, v5, v6

    const/16 v6, 0xdf

    const/16 v7, 0x18

    aput-byte v7, v5, v6

    const/16 v6, 0xe0

    const/16 v7, -0x43

    aput-byte v7, v5, v6

    const/16 v6, 0xe1

    const/16 v7, -0x7d

    aput-byte v7, v5, v6

    const/16 v6, 0xe2

    const/16 v7, 0x3d

    aput-byte v7, v5, v6

    const/16 v6, 0xe3

    const/16 v7, -0x4f

    aput-byte v7, v5, v6

    const/16 v6, 0xe4

    const/4 v7, 0x1

    aput-byte v7, v5, v6

    const/16 v6, 0xe5

    const/16 v7, -0x52

    aput-byte v7, v5, v6

    const/16 v6, 0xe6

    const/16 v7, 0x47

    aput-byte v7, v5, v6

    const/16 v6, 0xe7

    const/16 v7, -0x54

    aput-byte v7, v5, v6

    const/16 v6, 0xe8

    const/16 v7, 0x55

    aput-byte v7, v5, v6

    const/16 v6, 0xe9

    const/16 v7, -0x77

    aput-byte v7, v5, v6

    const/16 v6, 0xea

    const/16 v7, 0x7e

    aput-byte v7, v5, v6

    const/16 v6, 0xeb

    const/16 v7, -0x3f

    aput-byte v7, v5, v6

    const/16 v6, 0xec

    const/16 v7, 0x19

    aput-byte v7, v5, v6

    const/16 v6, 0xed

    const/16 v7, -0x59

    aput-byte v7, v5, v6

    const/16 v6, 0xee

    const/16 v7, -0x5b

    aput-byte v7, v5, v6

    const/16 v6, 0xef

    const/16 v7, 0x3b

    aput-byte v7, v5, v6

    const/16 v6, 0xf0

    const/16 v7, -0x5e

    aput-byte v7, v5, v6

    const/16 v6, 0xf1

    const/16 v7, 0x4f

    aput-byte v7, v5, v6

    const/16 v6, 0xf2

    const/16 v7, -0x77

    aput-byte v7, v5, v6

    const/16 v6, 0xf3

    const/4 v7, -0x8

    aput-byte v7, v5, v6

    const/16 v6, 0xf4

    const/4 v7, -0x1

    aput-byte v7, v5, v6

    const/16 v6, 0xf5

    const/16 v7, 0x4a

    aput-byte v7, v5, v6

    const/16 v6, 0xf6

    const/16 v7, -0x7b

    aput-byte v7, v5, v6

    const/16 v6, 0xf7

    const/16 v7, 0x6e

    aput-byte v7, v5, v6

    const/16 v6, 0xf8

    const/16 v7, -0x43

    aput-byte v7, v5, v6

    const/16 v6, 0xf9

    const/16 v7, 0x23

    aput-byte v7, v5, v6

    const/16 v6, 0xfa

    const/16 v7, 0x37

    aput-byte v7, v5, v6

    const/16 v6, 0xfb

    const/16 v7, 0x7d

    aput-byte v7, v5, v6

    const/16 v6, 0xfc

    const/16 v7, -0x3b

    aput-byte v7, v5, v6

    const/16 v6, 0xfd

    const/16 v7, 0x3d

    aput-byte v7, v5, v6

    const/16 v6, 0xfe

    const/16 v7, 0x6e

    aput-byte v7, v5, v6

    const/16 v6, 0xff

    const/16 v7, 0x77

    aput-byte v7, v5, v6

    const/16 v6, 0x100

    const/16 v7, 0x13

    aput-byte v7, v5, v6

    const/16 v6, 0x101

    const/16 v7, 0x12

    aput-byte v7, v5, v6

    const/16 v6, 0x102

    const/16 v7, -0x5e

    aput-byte v7, v5, v6

    const/16 v6, 0x103

    const/16 v7, -0x7f

    aput-byte v7, v5, v6

    const/16 v6, 0x104

    const/16 v7, -0x63

    aput-byte v7, v5, v6

    const/16 v6, 0x105

    const/16 v7, 0x32

    aput-byte v7, v5, v6

    const/16 v6, 0x106

    const/16 v7, 0x30

    aput-byte v7, v5, v6

    const/16 v6, 0x107

    const/16 v7, -0x9

    aput-byte v7, v5, v6

    const/16 v6, 0x108

    const/16 v7, -0x57

    aput-byte v7, v5, v6

    const/16 v6, 0x109

    const/16 v7, -0x64

    aput-byte v7, v5, v6

    const/16 v6, 0x10a

    const/16 v7, -0x14

    aput-byte v7, v5, v6

    const/16 v6, 0x10b

    const/16 v7, 0x63

    aput-byte v7, v5, v6

    const/16 v6, 0x10c

    const/16 v7, -0x6f

    aput-byte v7, v5, v6

    const/16 v6, 0x10d

    const/16 v7, -0x19

    aput-byte v7, v5, v6

    const/16 v6, 0x10e

    const/16 v7, -0x28

    aput-byte v7, v5, v6

    const/16 v6, 0x10f

    const/16 v7, 0x72

    aput-byte v7, v5, v6

    const/16 v6, 0x110

    const/16 v7, -0x6b

    aput-byte v7, v5, v6

    const/16 v6, 0x111

    const/16 v7, -0x6d

    aput-byte v7, v5, v6

    const/16 v6, 0x112

    const/16 v7, -0x5e

    aput-byte v7, v5, v6

    const/16 v6, 0x113

    const/16 v7, -0x67

    aput-byte v7, v5, v6

    const/16 v6, 0x114

    const/16 v7, -0x7f

    aput-byte v7, v5, v6

    const/16 v6, 0x115

    const/16 v7, 0x52

    aput-byte v7, v5, v6

    const/16 v6, 0x116

    const/16 v7, 0x3e

    aput-byte v7, v5, v6

    const/16 v6, 0x117

    const/16 v7, -0x72

    aput-byte v7, v5, v6

    const/16 v6, 0x118

    const/16 v7, 0x5e

    aput-byte v7, v5, v6

    const/16 v6, 0x119

    const/16 v7, 0x5f

    aput-byte v7, v5, v6

    const/16 v6, 0x11a

    const/16 v7, 0x23

    aput-byte v7, v5, v6

    const/16 v6, 0x11b

    const/16 v7, -0x1b

    aput-byte v7, v5, v6

    const/16 v6, 0x11c

    const/16 v7, -0x76

    aput-byte v7, v5, v6

    const/16 v6, 0x11d

    const/16 v7, -0x60

    aput-byte v7, v5, v6

    const/16 v6, 0x11e

    const/16 v7, 0x2a

    aput-byte v7, v5, v6

    const/16 v6, 0x11f

    const/16 v7, 0xa

    aput-byte v7, v5, v6

    const/16 v6, 0x120

    const/16 v7, -0x4f

    aput-byte v7, v5, v6

    const/16 v6, 0x121

    const/4 v7, 0x2

    aput-byte v7, v5, v6

    const/16 v6, 0x122

    const/4 v7, 0x3

    aput-byte v7, v5, v6

    const/16 v6, 0x123

    const/4 v7, 0x1

    aput-byte v7, v5, v6

    const/16 v6, 0x124

    const/4 v7, 0x0

    aput-byte v7, v5, v6

    const/16 v6, 0x125

    const/4 v7, 0x1

    aput-byte v7, v5, v6

    .line 61
    invoke-virtual {v1, v5}, Lcom/inca/security/lb;->IiiiIIIIii([B)V

    .line 112
    invoke-virtual {v1, v4}, Lcom/inca/security/lb;->IiiiIIIIii([B)[B

    move-result-object v4

    .line 115
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 141
    new-instance v4, Ljava/util/jar/JarInputStream;

    invoke-direct {v4, v1}, Ljava/util/jar/JarInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v4, p0, Lcom/inca/security/oc;->IIIIiiIiII:Ljava/util/jar/JarInputStream;

    .line 153
    :cond_1
    iget-object v4, p0, Lcom/inca/security/oc;->IIIIiiIiII:Ljava/util/jar/JarInputStream;

    invoke-virtual {v4}, Ljava/util/jar/JarInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 160
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\ts\u000bl\u0019z\u00191\u000ez\u0012"

    invoke-static {v5}, Lcom/inca/security/la;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1

    .line 40
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 157
    const/16 v5, 0x400

    new-array v5, v5, [B

    move-object v0, p0

    .line 152
    .end local p0    # "this":Lcom/inca/security/oc;
    .local v0, "this":Lcom/inca/security/oc;
    :goto_0
    iget-object v6, v0, Lcom/inca/security/oc;->IIIIiiIiII:Ljava/util/jar/JarInputStream;

    invoke-virtual {v6, v5}, Ljava/util/jar/JarInputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    .line 119
    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 174
    add-int/2addr v2, v6

    move-object v0, p0

    goto :goto_0

    .line 32
    :cond_2
    new-array v6, v2, [B

    iput-object v6, p0, Lcom/inca/security/oc;->IiiIiiiIiI:[B

    .line 190
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    iget-object v7, p0, Lcom/inca/security/oc;->IiiIiiiIiI:[B

    const/4 v8, 0x0

    invoke-static {v6, v8, v7, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 199
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    .line 8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "U3\u001a+"

    invoke-static {v7}, Lcom/inca/security/tb;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 159
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    invoke-virtual {v7, v8, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "1\u000ez\u0012"

    invoke-static {v7}, Lcom/inca/security/la;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 126
    const-string v7, "+\u001f!"

    invoke-static {v7}, Lcom/inca/security/tb;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {p1, v7, v8}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v7

    .line 12
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v7, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 114
    const-string v6, "\u0005{\u0012"

    invoke-static {v6}, Lcom/inca/security/la;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x0

    invoke-virtual {p1, v6, v9}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v6

    .line 85
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v6, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 104
    new-instance v10, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v10, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 188
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->reset()V

    move-object v2, v1

    .line 204
    :goto_1
    invoke-virtual {v2, v5}, Ljava/io/ByteArrayInputStream;->read([B)I

    move-result v2

    const/4 v11, -0x1

    if-eq v2, v11, :cond_3

    .line 66
    const/4 v11, 0x0

    invoke-virtual {v10, v5, v11, v2}, Ljava/io/OutputStream;->write([BII)V

    move-object v2, v1

    goto :goto_1

    .line 5
    :cond_3
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V

    .line 170
    new-instance v2, Ldalvik/system/DexClassLoader;

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v12

    invoke-direct {v2, v5, v10, v11, v12}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    iput-object v2, p0, Lcom/inca/security/oc;->IiIiIiiIii:Ldalvik/system/DexClassLoader;

    .line 189
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 92
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 6
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 178
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 108
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 13
    .end local v0    # "this":Lcom/inca/security/oc;
    :cond_4
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V

    .line 206
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 69
    return-void
.end method


# virtual methods
.method public synthetic IiiiIIIIii(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p1, "arg0"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 156
    iget-object v0, p0, Lcom/inca/security/oc;->IiIiIiiIii:Ldalvik/system/DexClassLoader;

    invoke-virtual {v0, p1}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 173
    if-eqz v2, :cond_0

    .line 39
    const-string v0, "\u00186\u0016w\u00127\u00188U*\u001e:\u000e+\u0012-\u0002w70\u0019+\u001a+\u0002w4;\u0011<\u0018-27\u000f<\u001c+\u0012-\u0002\u0014\u001a7\u001a>\u001e+"

    invoke-static {v0}, Lcom/inca/security/tb;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 135
    const-string v0, "\rz\u001eV\u0004l\u001e~\u0004|\u000f"

    invoke-static {v0}, Lcom/inca/security/la;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v1

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    move-object v0, v1

    .line 145
    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 201
    :cond_0
    :goto_0
    return-object v1

    .line 93
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public synthetic IiiiIIIIii()V
    .locals 0

    .prologue
    .line 143
    return-void
.end method

.method public synthetic finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 79
    return-void
.end method
