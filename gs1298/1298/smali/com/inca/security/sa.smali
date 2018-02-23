.class public Lcom/inca/security/sa;
.super Ljava/lang/Object;
.source "ka"


# static fields
.field public static final synthetic IIIIiiIiII:I = 0x0

.field public static final synthetic iiIIIIIiiI:I = 0x1


# instance fields
.field private synthetic IIIiiiiIII:[B

.field private synthetic IIiIIIIIii:Ljava/io/File;

.field private synthetic IIiIIIIiIi:J

.field private synthetic IIiIiIIIii:J

.field private synthetic IIiiIiIIii:[B

.field private final synthetic IiIIIiIIIi:I

.field private synthetic IiIiIIIiIi:I

.field private final synthetic IiIiIiiIii:I

.field private synthetic IiiIiiiIiI:[C

.field private final synthetic IiiiIIIiIi:I

.field private synthetic IiiiiIiiIi:I

.field private synthetic iiIIIiiiiI:S

.field public synthetic iiIIiIiIii:Ljava/util/ArrayList;

.field private synthetic iiIiIIIiiI:Ljava/io/InputStream;

.field public synthetic iiiIiiiiII:I

.field private synthetic iiiiIIIiii:[B


# direct methods
.method public synthetic constructor <init>(Ljava/io/File;)V
    .locals 14
    .param p1, "arg0"    # Ljava/io/File;

    .prologue
    const/16 v13, -0x32

    const/4 v12, 0x2

    const/4 v11, 0x3

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 16
    const/16 v0, 0x126

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x10

    const/16 v8, 0x80

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput v8, p0, Lcom/inca/security/sa;->IiIiIiiIii:I

    .line 19
    iput v7, p0, Lcom/inca/security/sa;->IiiiIIIiIi:I

    .line 46
    iput v7, p0, Lcom/inca/security/sa;->IiIIIiIIIi:I

    .line 106
    iput-object v6, p0, Lcom/inca/security/sa;->iiIiIIIiiI:Ljava/io/InputStream;

    .line 0
    new-array v6, v11, [C

    const/16 v7, 0x68

    aput-char v7, v6, v10

    const/16 v7, 0x68

    aput-char v7, v6, v9

    const/16 v7, 0x6d

    aput-char v7, v6, v12

    iput-object v6, p0, Lcom/inca/security/sa;->IiiIiiiIiI:[C

    .line 67
    iput-wide v4, p0, Lcom/inca/security/sa;->IIiIiIIIii:J

    .line 58
    iput v10, p0, Lcom/inca/security/sa;->IiiiiIiiIi:I

    .line 117
    iput v10, p0, Lcom/inca/security/sa;->IiIiIIIiIi:I

    .line 22
    iput-short v10, p0, Lcom/inca/security/sa;->iiIIIiiiiI:S

    .line 97
    iput-wide v2, p0, Lcom/inca/security/sa;->IIiIIIIiIi:J

    .line 120
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/inca/security/sa;->iiIIiIiIii:Ljava/util/ArrayList;

    .line 195
    iput-object v1, p0, Lcom/inca/security/sa;->IIiIIIIIii:Ljava/io/File;

    .line 146
    new-array v0, v0, [B

    const/16 v1, 0x30

    aput-byte v1, v0, v10

    const/16 v1, -0x7e

    aput-byte v1, v0, v9

    aput-byte v9, v0, v12

    const/16 v1, 0x22

    aput-byte v1, v0, v11

    const/4 v1, 0x4

    const/16 v2, 0x30

    aput-byte v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/4 v1, 0x6

    aput-byte v1, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x2a

    aput-byte v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, -0x7a

    aput-byte v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x48

    aput-byte v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, -0x7a

    aput-byte v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, -0x9

    aput-byte v2, v0, v1

    const/16 v1, 0xd

    aput-byte v1, v0, v1

    const/16 v1, 0xe

    aput-byte v9, v0, v1

    const/16 v1, 0xf

    aput-byte v9, v0, v1

    const/16 v1, 0x10

    aput-byte v9, v0, v1

    const/16 v1, 0x11

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x12

    aput-byte v10, v0, v1

    const/16 v1, 0x13

    aput-byte v11, v0, v1

    const/16 v1, 0x14

    const/16 v2, -0x7e

    aput-byte v2, v0, v1

    const/16 v1, 0x15

    aput-byte v9, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x17

    aput-byte v10, v0, v1

    const/16 v1, 0x18

    const/16 v2, 0x30

    aput-byte v2, v0, v1

    const/16 v1, 0x19

    const/16 v2, -0x7e

    aput-byte v2, v0, v1

    const/16 v1, 0x1a

    aput-byte v9, v0, v1

    const/16 v1, 0x1b

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x1c

    aput-byte v12, v0, v1

    const/16 v1, 0x1d

    const/16 v2, -0x7e

    aput-byte v2, v0, v1

    const/16 v1, 0x1e

    aput-byte v9, v0, v1

    const/16 v1, 0x1f

    aput-byte v9, v0, v1

    const/16 v1, 0x20

    aput-byte v10, v0, v1

    const/16 v1, 0x21

    const/16 v2, -0x39

    aput-byte v2, v0, v1

    const/16 v1, 0x22

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x23

    const/16 v2, -0x43

    aput-byte v2, v0, v1

    const/16 v1, 0x24

    const/16 v2, -0x3e

    aput-byte v2, v0, v1

    const/16 v1, 0x25

    const/16 v2, -0x1a

    aput-byte v2, v0, v1

    const/16 v1, 0x26

    const/16 v2, 0x3e

    aput-byte v2, v0, v1

    const/16 v1, 0x27

    const/16 v2, 0x3f

    aput-byte v2, v0, v1

    const/16 v1, 0x28

    const/16 v2, -0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x29

    aput-byte v12, v0, v1

    const/16 v1, 0x2a

    const/16 v2, -0x54

    aput-byte v2, v0, v1

    const/16 v1, 0x2b

    const/16 v2, 0x65

    aput-byte v2, v0, v1

    const/16 v1, 0x2c

    aput-byte v13, v0, v1

    const/16 v1, 0x2d

    const/16 v2, 0x57

    aput-byte v2, v0, v1

    const/16 v1, 0x2e

    const/16 v2, -0x64

    aput-byte v2, v0, v1

    const/16 v1, 0x2f

    const/16 v2, -0x2c

    aput-byte v2, v0, v1

    const/16 v1, 0x30

    const/16 v2, 0x4f

    aput-byte v2, v0, v1

    const/16 v1, 0x31

    const/16 v2, -0x2a

    aput-byte v2, v0, v1

    const/16 v1, 0x32

    const/16 v2, 0x39

    aput-byte v2, v0, v1

    const/16 v1, 0x33

    const/16 v2, 0x44

    aput-byte v2, v0, v1

    const/16 v1, 0x34

    const/16 v2, -0x56

    aput-byte v2, v0, v1

    const/16 v1, 0x35

    aput-byte v13, v0, v1

    const/16 v1, 0x36

    const/16 v2, 0x24

    aput-byte v2, v0, v1

    const/16 v1, 0x37

    const/4 v2, -0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x38

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x39

    const/16 v2, -0x2c

    aput-byte v2, v0, v1

    const/16 v1, 0x3a

    const/16 v2, 0x56

    aput-byte v2, v0, v1

    const/16 v1, 0x3b

    const/16 v2, 0x49

    aput-byte v2, v0, v1

    const/16 v1, 0x3c

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x3d

    const/16 v2, 0x42

    aput-byte v2, v0, v1

    const/16 v1, 0x3e

    const/16 v2, -0x11

    aput-byte v2, v0, v1

    const/16 v1, 0x3f

    const/16 v2, 0x4e

    aput-byte v2, v0, v1

    const/16 v1, 0x40

    const/16 v2, -0x69

    aput-byte v2, v0, v1

    const/16 v1, 0x41

    const/16 v2, 0x66

    aput-byte v2, v0, v1

    const/16 v1, 0x42

    const/16 v2, 0x34

    aput-byte v2, v0, v1

    const/16 v1, 0x43

    const/16 v2, 0x12

    aput-byte v2, v0, v1

    const/16 v1, 0x44

    const/16 v2, 0x67

    aput-byte v2, v0, v1

    const/16 v1, 0x45

    const/16 v2, 0x20

    aput-byte v2, v0, v1

    const/16 v1, 0x46

    const/16 v2, 0x3b

    aput-byte v2, v0, v1

    const/16 v1, 0x47

    const/16 v2, 0x5d

    aput-byte v2, v0, v1

    const/16 v1, 0x48

    const/16 v2, -0x6b

    aput-byte v2, v0, v1

    const/16 v1, 0x49

    const/16 v2, 0x18

    aput-byte v2, v0, v1

    const/16 v1, 0x4a

    const/16 v2, 0x1d

    aput-byte v2, v0, v1

    const/16 v1, 0x4b

    const/16 v2, -0x2c

    aput-byte v2, v0, v1

    const/16 v1, 0x4c

    const/16 v2, -0x2d

    aput-byte v2, v0, v1

    const/16 v1, 0x4d

    const/16 v2, -0x4b

    aput-byte v2, v0, v1

    const/16 v1, 0x4e

    const/16 v2, 0x18

    aput-byte v2, v0, v1

    const/16 v1, 0x4f

    const/16 v2, 0x71

    aput-byte v2, v0, v1

    const/16 v1, 0x50

    const/16 v2, 0x77

    aput-byte v2, v0, v1

    const/16 v1, 0x51

    const/16 v2, -0x6f

    aput-byte v2, v0, v1

    const/16 v1, 0x52

    const/16 v2, 0x66

    aput-byte v2, v0, v1

    const/16 v1, 0x53

    const/16 v2, -0x42

    aput-byte v2, v0, v1

    const/16 v1, 0x54

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    const/16 v1, 0x55

    const/16 v2, 0x5e

    aput-byte v2, v0, v1

    const/16 v1, 0x56

    const/16 v2, -0x6a

    aput-byte v2, v0, v1

    const/16 v1, 0x57

    const/16 v2, 0x27

    aput-byte v2, v0, v1

    const/16 v1, 0x58

    const/16 v2, -0x1d

    aput-byte v2, v0, v1

    const/16 v1, 0x59

    const/16 v2, 0x66

    aput-byte v2, v0, v1

    const/16 v1, 0x5a

    const/16 v2, 0x69

    aput-byte v2, v0, v1

    const/16 v1, 0x5b

    aput-byte v13, v0, v1

    const/16 v1, 0x5c

    const/16 v2, -0x13

    aput-byte v2, v0, v1

    const/16 v1, 0x5d

    const/16 v2, 0x72

    aput-byte v2, v0, v1

    const/16 v1, 0x5e

    const/16 v2, -0x52

    aput-byte v2, v0, v1

    const/16 v1, 0x5f

    const/16 v2, 0x78

    aput-byte v2, v0, v1

    const/16 v1, 0x60

    const/16 v2, -0x52

    aput-byte v2, v0, v1

    const/16 v1, 0x61

    const/16 v2, -0x66

    aput-byte v2, v0, v1

    const/16 v1, 0x62

    const/16 v2, -0x58

    aput-byte v2, v0, v1

    const/16 v1, 0x63

    const/16 v2, 0x1f

    aput-byte v2, v0, v1

    const/16 v1, 0x64

    const/4 v2, 0x4

    aput-byte v2, v0, v1

    const/16 v1, 0x65

    const/16 v2, 0x58

    aput-byte v2, v0, v1

    const/16 v1, 0x66

    const/4 v2, -0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x67

    const/16 v2, -0x10

    aput-byte v2, v0, v1

    const/16 v1, 0x68

    const/16 v2, 0x28

    aput-byte v2, v0, v1

    const/16 v1, 0x69

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x6a

    const/16 v2, -0x3d

    aput-byte v2, v0, v1

    const/16 v1, 0x6b

    const/16 v2, -0x6a

    aput-byte v2, v0, v1

    const/16 v1, 0x6c

    const/16 v2, 0x3e

    aput-byte v2, v0, v1

    const/16 v1, 0x6d

    const/16 v2, -0x5a

    aput-byte v2, v0, v1

    const/16 v1, 0x6e

    const/16 v2, -0x73

    aput-byte v2, v0, v1

    const/16 v1, 0x6f

    const/16 v2, -0x23

    aput-byte v2, v0, v1

    const/16 v1, 0x70

    const/16 v2, -0x47

    aput-byte v2, v0, v1

    const/16 v1, 0x71

    const/16 v2, 0x43

    aput-byte v2, v0, v1

    const/16 v1, 0x72

    const/16 v2, -0x11

    aput-byte v2, v0, v1

    const/16 v1, 0x73

    const/16 v2, -0x76

    aput-byte v2, v0, v1

    const/16 v1, 0x74

    const/16 v2, 0x6e

    aput-byte v2, v0, v1

    const/16 v1, 0x75

    const/16 v2, -0x6d

    aput-byte v2, v0, v1

    const/16 v1, 0x76

    const/16 v2, -0x1a

    aput-byte v2, v0, v1

    const/16 v1, 0x77

    const/16 v2, -0x6b

    aput-byte v2, v0, v1

    const/16 v1, 0x78

    const/16 v2, -0x13

    aput-byte v2, v0, v1

    const/16 v1, 0x79

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x7a

    const/16 v2, -0x41

    aput-byte v2, v0, v1

    const/16 v1, 0x7b

    const/16 v2, 0x72

    aput-byte v2, v0, v1

    const/16 v1, 0x7c

    const/4 v2, -0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x7d

    const/16 v2, -0x3a

    aput-byte v2, v0, v1

    const/16 v1, 0x7e

    const/16 v2, 0x19

    aput-byte v2, v0, v1

    const/16 v1, 0x7f

    const/16 v2, -0x55

    aput-byte v2, v0, v1

    const/16 v1, 0x80

    const/16 v2, 0x1a

    aput-byte v2, v0, v1

    const/16 v1, 0x81

    aput-byte v13, v0, v1

    const/16 v1, 0x82

    const/16 v2, 0x26

    aput-byte v2, v0, v1

    const/16 v1, 0x83

    const/16 v2, 0x3e

    aput-byte v2, v0, v1

    const/16 v1, 0x84

    const/16 v2, -0x74

    aput-byte v2, v0, v1

    const/16 v1, 0x85

    const/16 v2, -0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x86

    const/16 v2, 0x42

    aput-byte v2, v0, v1

    const/16 v1, 0x87

    const/16 v2, -0x36

    aput-byte v2, v0, v1

    const/16 v1, 0x88

    const/16 v2, -0x10

    aput-byte v2, v0, v1

    const/16 v1, 0x89

    const/16 v2, -0x40

    aput-byte v2, v0, v1

    const/16 v1, 0x8a

    const/16 v2, -0x74

    aput-byte v2, v0, v1

    const/16 v1, 0x8b

    const/16 v2, -0x5c

    aput-byte v2, v0, v1

    const/16 v1, 0x8c

    const/16 v2, -0x4f

    aput-byte v2, v0, v1

    const/16 v1, 0x8d

    const/16 v2, 0x54

    aput-byte v2, v0, v1

    const/16 v1, 0x8e

    const/4 v2, -0x4

    aput-byte v2, v0, v1

    const/16 v1, 0x8f

    const/16 v2, 0x24

    aput-byte v2, v0, v1

    const/16 v1, 0x90

    const/16 v2, -0x29

    aput-byte v2, v0, v1

    const/16 v1, 0x91

    const/16 v2, 0x46

    aput-byte v2, v0, v1

    const/16 v1, 0x92

    const/16 v2, 0x30

    aput-byte v2, v0, v1

    const/16 v1, 0x93

    const/16 v2, 0x3c

    aput-byte v2, v0, v1

    const/16 v1, 0x94

    const/16 v2, -0x68

    aput-byte v2, v0, v1

    const/16 v1, 0x95

    const/16 v2, 0x4d

    aput-byte v2, v0, v1

    const/16 v1, 0x96

    const/16 v2, -0x4d

    aput-byte v2, v0, v1

    const/16 v1, 0x97

    const/16 v2, -0x1d

    aput-byte v2, v0, v1

    const/16 v1, 0x98

    const/16 v2, 0x5d

    aput-byte v2, v0, v1

    const/16 v1, 0x99

    const/16 v2, -0x3e

    aput-byte v2, v0, v1

    const/16 v1, 0x9a

    const/16 v2, -0x1c

    aput-byte v2, v0, v1

    const/16 v1, 0x9b

    const/4 v2, 0x4

    aput-byte v2, v0, v1

    const/16 v1, 0x9c

    const/16 v2, 0x26

    aput-byte v2, v0, v1

    const/16 v1, 0x9d

    const/16 v2, -0x16

    aput-byte v2, v0, v1

    const/16 v1, 0x9e

    const/16 v2, -0x54

    aput-byte v2, v0, v1

    const/16 v1, 0x9f

    const/16 v2, 0x6a

    aput-byte v2, v0, v1

    const/16 v1, 0xa0

    const/16 v2, -0x58

    aput-byte v2, v0, v1

    const/16 v1, 0xa1

    aput-byte v11, v0, v1

    const/16 v1, 0xa2

    const/16 v2, 0x6e

    aput-byte v2, v0, v1

    const/16 v1, 0xa3

    const/4 v2, -0x3

    aput-byte v2, v0, v1

    const/16 v1, 0xa4

    const/16 v2, -0x2a

    aput-byte v2, v0, v1

    const/16 v1, 0xa5

    const/16 v2, -0x63

    aput-byte v2, v0, v1

    const/16 v1, 0xa6

    const/16 v2, -0x4a

    aput-byte v2, v0, v1

    const/16 v1, 0xa7

    const/16 v2, 0x7c

    aput-byte v2, v0, v1

    const/16 v1, 0xa8

    const/16 v2, 0x6b

    aput-byte v2, v0, v1

    const/16 v1, 0xa9

    const/16 v2, 0x56

    aput-byte v2, v0, v1

    const/16 v1, 0xaa

    const/16 v2, 0x39

    aput-byte v2, v0, v1

    const/16 v1, 0xab

    const/16 v2, -0x73

    aput-byte v2, v0, v1

    const/16 v1, 0xac

    const/16 v2, -0x5c

    aput-byte v2, v0, v1

    const/16 v1, 0xad

    const/16 v2, 0x44

    aput-byte v2, v0, v1

    const/16 v1, 0xae

    const/16 v2, -0x33

    aput-byte v2, v0, v1

    const/16 v1, 0xaf

    const/16 v2, 0x60

    aput-byte v2, v0, v1

    const/16 v1, 0xb0

    const/16 v2, -0x3d

    aput-byte v2, v0, v1

    const/16 v1, 0xb1

    const/16 v2, -0x6c

    aput-byte v2, v0, v1

    const/16 v1, 0xb2

    const/16 v2, 0x74

    aput-byte v2, v0, v1

    const/16 v1, 0xb3

    const/16 v2, 0x34

    aput-byte v2, v0, v1

    const/16 v1, 0xb4

    const/16 v2, 0x79

    aput-byte v2, v0, v1

    const/16 v1, 0xb5

    const/16 v2, 0x1e

    aput-byte v2, v0, v1

    const/16 v1, 0xb6

    const/16 v2, 0x51

    aput-byte v2, v0, v1

    const/16 v1, 0xb7

    const/16 v2, 0x3c

    aput-byte v2, v0, v1

    const/16 v1, 0xb8

    const/16 v2, -0x74

    aput-byte v2, v0, v1

    const/16 v1, 0xb9

    const/16 v2, 0x2c

    aput-byte v2, v0, v1

    const/16 v1, 0xba

    const/16 v2, 0x22

    aput-byte v2, v0, v1

    const/16 v1, 0xbb

    const/16 v2, 0x58

    aput-byte v2, v0, v1

    const/16 v1, 0xbc

    const/16 v2, 0x48

    aput-byte v2, v0, v1

    const/16 v1, 0xbd

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0xbe

    const/16 v2, -0x41

    aput-byte v2, v0, v1

    const/16 v1, 0xbf

    const/16 v2, 0x23

    aput-byte v2, v0, v1

    const/16 v1, 0xc0

    const/16 v2, 0x22

    aput-byte v2, v0, v1

    const/16 v1, 0xc1

    const/16 v2, 0x76

    aput-byte v2, v0, v1

    const/16 v1, 0xc2

    const/16 v2, 0x48

    aput-byte v2, v0, v1

    const/16 v1, 0xc3

    const/16 v2, -0x38

    aput-byte v2, v0, v1

    const/16 v1, 0xc4

    const/4 v2, 0x4

    aput-byte v2, v0, v1

    const/16 v1, 0xc5

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0xc6

    const/16 v2, 0x41

    aput-byte v2, v0, v1

    const/16 v1, 0xc7

    const/4 v2, -0x7

    aput-byte v2, v0, v1

    const/16 v1, 0xc8

    const/16 v2, -0x5a

    aput-byte v2, v0, v1

    const/16 v1, 0xc9

    const/16 v2, -0x38

    aput-byte v2, v0, v1

    const/16 v1, 0xca

    const/16 v2, 0x63

    aput-byte v2, v0, v1

    const/16 v1, 0xcb

    const/16 v2, -0x66

    aput-byte v2, v0, v1

    const/16 v1, 0xcc

    const/16 v2, 0x41

    aput-byte v2, v0, v1

    const/16 v1, 0xcd

    const/16 v2, 0x44

    aput-byte v2, v0, v1

    const/16 v1, 0xce

    const/16 v2, 0x58

    aput-byte v2, v0, v1

    const/16 v1, 0xcf

    const/4 v2, -0x3

    aput-byte v2, v0, v1

    const/16 v1, 0xd0

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0xd1

    const/16 v2, -0x16

    aput-byte v2, v0, v1

    const/16 v1, 0xd2

    const/16 v2, -0x71

    aput-byte v2, v0, v1

    const/16 v1, 0xd3

    const/16 v2, -0x67

    aput-byte v2, v0, v1

    const/16 v1, 0xd4

    const/16 v2, -0x76

    aput-byte v2, v0, v1

    const/16 v1, 0xd5

    aput-byte v13, v0, v1

    const/16 v1, 0xd6

    const/16 v2, -0x71

    aput-byte v2, v0, v1

    const/16 v1, 0xd7

    const/16 v2, 0x29

    aput-byte v2, v0, v1

    const/16 v1, 0xd8

    const/16 v2, -0x36

    aput-byte v2, v0, v1

    const/16 v1, 0xd9

    const/16 v2, 0x7b

    aput-byte v2, v0, v1

    const/16 v1, 0xda

    const/16 v2, -0x60

    aput-byte v2, v0, v1

    const/16 v1, 0xdb

    const/16 v2, 0x35

    aput-byte v2, v0, v1

    const/16 v1, 0xdc

    aput-byte v12, v0, v1

    const/16 v1, 0xdd

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0xde

    const/16 v2, -0x2d

    aput-byte v2, v0, v1

    const/16 v1, 0xdf

    aput-byte v11, v0, v1

    const/16 v1, 0xe0

    const/16 v2, 0x61

    aput-byte v2, v0, v1

    const/16 v1, 0xe1

    const/16 v2, 0x53

    aput-byte v2, v0, v1

    const/16 v1, 0xe2

    const/16 v2, -0x1c

    aput-byte v2, v0, v1

    const/16 v1, 0xe3

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0xe4

    const/16 v2, 0x2a

    aput-byte v2, v0, v1

    const/16 v1, 0xe5

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0xe6

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0xe7

    const/16 v2, -0x31

    aput-byte v2, v0, v1

    const/16 v1, 0xe8

    const/16 v2, 0x24

    aput-byte v2, v0, v1

    const/16 v1, 0xe9

    const/16 v2, -0xf

    aput-byte v2, v0, v1

    const/16 v1, 0xea

    const/16 v2, 0x4b

    aput-byte v2, v0, v1

    const/16 v1, 0xeb

    const/16 v2, -0x35

    aput-byte v2, v0, v1

    const/16 v1, 0xec

    const/4 v2, -0x5

    aput-byte v2, v0, v1

    const/16 v1, 0xed

    const/16 v2, -0x13

    aput-byte v2, v0, v1

    const/16 v1, 0xee

    const/16 v2, -0x6b

    aput-byte v2, v0, v1

    const/16 v1, 0xef

    const/16 v2, -0x3d

    aput-byte v2, v0, v1

    const/16 v1, 0xf0

    const/16 v2, -0x38

    aput-byte v2, v0, v1

    const/16 v1, 0xf1

    const/16 v2, 0x26

    aput-byte v2, v0, v1

    const/16 v1, 0xf2

    const/4 v2, -0x2

    aput-byte v2, v0, v1

    const/16 v1, 0xf3

    const/16 v2, 0x5b

    aput-byte v2, v0, v1

    const/16 v1, 0xf4

    const/16 v2, 0x2e

    aput-byte v2, v0, v1

    const/16 v1, 0xf5

    const/16 v2, 0x34

    aput-byte v2, v0, v1

    const/16 v1, 0xf6

    const/16 v2, 0x28

    aput-byte v2, v0, v1

    const/16 v1, 0xf7

    const/16 v2, -0x63

    aput-byte v2, v0, v1

    const/16 v1, 0xf8

    const/16 v2, 0x6f

    aput-byte v2, v0, v1

    const/16 v1, 0xf9

    const/16 v2, 0x70

    aput-byte v2, v0, v1

    const/16 v1, 0xfa

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0xfb

    const/16 v2, 0x3a

    aput-byte v2, v0, v1

    const/16 v1, 0xfc

    const/16 v2, 0x51

    aput-byte v2, v0, v1

    const/16 v1, 0xfd

    const/16 v2, 0x6c

    aput-byte v2, v0, v1

    const/16 v1, 0xfe

    const/16 v2, 0x4e

    aput-byte v2, v0, v1

    const/16 v1, 0xff

    const/16 v2, -0x38

    aput-byte v2, v0, v1

    const/16 v1, 0x100

    const/16 v2, -0x74

    aput-byte v2, v0, v1

    const/16 v1, 0x101

    const/16 v2, -0x77

    aput-byte v2, v0, v1

    const/16 v1, 0x102

    const/4 v2, -0x1

    aput-byte v2, v0, v1

    const/16 v1, 0x103

    const/16 v2, 0x11

    aput-byte v2, v0, v1

    const/16 v1, 0x104

    const/16 v2, -0x59

    aput-byte v2, v0, v1

    const/16 v1, 0x105

    const/16 v2, 0x76

    aput-byte v2, v0, v1

    const/16 v1, 0x106

    const/16 v2, 0x70

    aput-byte v2, v0, v1

    const/16 v1, 0x107

    const/16 v2, -0x6f

    aput-byte v2, v0, v1

    const/16 v1, 0x108

    const/16 v2, 0x7a

    aput-byte v2, v0, v1

    const/16 v1, 0x109

    const/16 v2, 0x32

    aput-byte v2, v0, v1

    const/16 v1, 0x10a

    const/16 v2, 0x68

    aput-byte v2, v0, v1

    const/16 v1, 0x10b

    const/16 v2, -0x49

    aput-byte v2, v0, v1

    const/16 v1, 0x10c

    const/16 v2, -0x49

    aput-byte v2, v0, v1

    const/16 v1, 0x10d

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x10e

    const/16 v2, -0x2b

    aput-byte v2, v0, v1

    const/16 v1, 0x10f

    const/16 v2, -0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0x110

    const/16 v2, -0x4d

    aput-byte v2, v0, v1

    const/16 v1, 0x111

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    const/16 v1, 0x112

    const/16 v2, 0x42

    aput-byte v2, v0, v1

    const/16 v1, 0x113

    const/16 v2, 0x7d

    aput-byte v2, v0, v1

    const/16 v1, 0x114

    const/16 v2, 0x13

    aput-byte v2, v0, v1

    const/16 v1, 0x115

    aput-byte v11, v0, v1

    const/16 v1, 0x116

    const/16 v2, 0x10

    aput-byte v2, v0, v1

    const/16 v1, 0x117

    const/16 v2, 0x1a

    aput-byte v2, v0, v1

    const/16 v1, 0x118

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    const/16 v1, 0x119

    const/16 v2, -0x61

    aput-byte v2, v0, v1

    const/16 v1, 0x11a

    const/16 v2, -0x15

    aput-byte v2, v0, v1

    const/16 v1, 0x11b

    const/16 v2, 0x6b

    aput-byte v2, v0, v1

    const/16 v1, 0x11c

    const/16 v2, 0x7b

    aput-byte v2, v0, v1

    const/16 v1, 0x11d

    const/16 v2, -0x43

    aput-byte v2, v0, v1

    const/16 v1, 0x11e

    const/16 v2, -0x7a

    aput-byte v2, v0, v1

    const/16 v1, 0x11f

    const/16 v2, 0x48

    aput-byte v2, v0, v1

    const/16 v1, 0x120

    const/16 v2, -0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x121

    aput-byte v12, v0, v1

    const/16 v1, 0x122

    aput-byte v11, v0, v1

    const/16 v1, 0x123

    aput-byte v9, v0, v1

    const/16 v1, 0x124

    aput-byte v10, v0, v1

    const/16 v1, 0x125

    aput-byte v9, v0, v1

    iput-object v0, p0, Lcom/inca/security/sa;->iiiiIIIiii:[B

    .line 179
    const/4 v0, -0x1

    iput v0, p0, Lcom/inca/security/sa;->iiiIiiiiII:I

    .line 61
    iput-object p1, p0, Lcom/inca/security/sa;->IIiIIIIIii:Ljava/io/File;

    .line 176
    invoke-static {}, Lcom/inca/security/Core/AppGuardEngine;->iiiiIIiiII()Ljava/lang/String;

    move-result-object v0

    const-string v1, "armeabi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    iput v10, p0, Lcom/inca/security/sa;->iiiIiiiiII:I

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    invoke-static {}, Lcom/inca/security/Core/AppGuardEngine;->iiiiIIiiII()Ljava/lang/String;

    move-result-object v0

    const-string v1, "x86"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    iput v9, p0, Lcom/inca/security/sa;->iiiIiiiiII:I

    goto :goto_0
.end method

.method private synthetic IiiiIIIIii([B)Z
    .locals 11
    .param p1, "arg0"    # [B

    .prologue
    const/16 v10, 0x10

    const/4 v9, 0x1

    const/4 v8, 0x2

    const/4 v0, 0x0

    .line 264
    const/4 v1, 0x4

    new-array v1, v1, [B

    .line 484
    const/4 v2, 0x3

    new-array v2, v2, [B

    .line 417
    new-array v3, v8, [B

    .line 390
    new-instance v4, Ljava/util/zip/CRC32;

    invoke-direct {v4}, Ljava/util/zip/CRC32;-><init>()V

    .line 285
    if-nez p1, :cond_1

    .line 468
    :cond_0
    :goto_0
    return v0

    .line 386
    :cond_1
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 479
    :try_start_0
    invoke-virtual {v5, v2}, Ljava/io/ByteArrayInputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    aget-byte v6, v2, v0

    iget-object v7, p0, Lcom/inca/security/sa;->IiiIiiiIiI:[C

    aget-char v7, v7, v0

    if-ne v6, v7, :cond_0

    aget-byte v6, v2, v9

    iget-object v7, p0, Lcom/inca/security/sa;->IiiIiiiIiI:[C

    aget-char v7, v7, v9

    if-ne v6, v7, :cond_0

    aget-byte v6, v2, v8

    iget-object v7, p0, Lcom/inca/security/sa;->IiiIiiiIiI:[C

    aget-char v7, v7, v8

    if-ne v6, v7, :cond_0

    .line 331
    invoke-virtual {v4, v2}, Ljava/util/zip/CRC32;->update([B)V

    .line 481
    :try_start_1
    invoke-virtual {v5, v1}, Ljava/io/ByteArrayInputStream;->read([B)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 487
    invoke-virtual {v4, v1}, Ljava/util/zip/CRC32;->update([B)V

    .line 369
    invoke-static {v1}, Lcom/inca/security/va;->iIiIIiIIIi([B)I

    move-result v2

    int-to-long v6, v2

    iput-wide v6, p0, Lcom/inca/security/sa;->IIiIiIIIii:J

    .line 456
    new-array v2, v10, [B

    iput-object v2, p0, Lcom/inca/security/sa;->IIiiIiIIii:[B

    .line 327
    :try_start_2
    iget-object v2, p0, Lcom/inca/security/sa;->IIiiIiIIii:[B

    invoke-virtual {v5, v2}, Ljava/io/ByteArrayInputStream;->read([B)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8

    .line 338
    iget-object v2, p0, Lcom/inca/security/sa;->IIiiIiIIii:[B

    invoke-virtual {v4, v2}, Ljava/util/zip/CRC32;->update([B)V

    .line 258
    new-array v2, v10, [B

    iput-object v2, p0, Lcom/inca/security/sa;->IIIiiiiIII:[B

    .line 400
    :try_start_3
    iget-object v2, p0, Lcom/inca/security/sa;->IIIiiiiIII:[B

    invoke-virtual {v5, v2}, Ljava/io/ByteArrayInputStream;->read([B)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7

    .line 291
    iget-object v2, p0, Lcom/inca/security/sa;->IIIiiiiIII:[B

    invoke-virtual {v4, v2}, Ljava/util/zip/CRC32;->update([B)V

    .line 341
    :try_start_4
    invoke-virtual {v5, v1}, Ljava/io/ByteArrayInputStream;->read([B)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 305
    invoke-virtual {v4, v1}, Ljava/util/zip/CRC32;->update([B)V

    .line 436
    invoke-static {v1}, Lcom/inca/security/va;->iIiIIiIIIi([B)I

    move-result v2

    iput v2, p0, Lcom/inca/security/sa;->IiiiiIiiIi:I

    .line 346
    :try_start_5
    invoke-virtual {v5, v1}, Ljava/io/ByteArrayInputStream;->read([B)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 313
    invoke-virtual {v4, v1}, Ljava/util/zip/CRC32;->update([B)V

    .line 238
    invoke-static {v1}, Lcom/inca/security/va;->iIiIIiIIIi([B)I

    move-result v2

    .line 439
    :try_start_6
    invoke-virtual {v5, v3}, Ljava/io/ByteArrayInputStream;->read([B)I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 411
    invoke-virtual {v4, v3}, Ljava/util/zip/CRC32;->update([B)V

    .line 375
    invoke-static {v3}, Lcom/inca/security/va;->iIiIIiIIIi([B)S

    move-result v6

    iput v6, p0, Lcom/inca/security/sa;->IiIiIIIiIi:I

    .line 243
    :try_start_7
    invoke-virtual {v5, v1}, Ljava/io/ByteArrayInputStream;->read([B)I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 395
    invoke-static {v1}, Lcom/inca/security/va;->iIiIIiIIIi([B)I

    move-result v1

    int-to-long v6, v1

    .line 227
    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    .line 403
    :try_start_8
    invoke-virtual {v5, v3}, Ljava/io/ByteArrayInputStream;->read([B)I
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 221
    invoke-static {v3}, Lcom/inca/security/va;->iIiIIiIIIi([B)S

    move-result v1

    iput-short v1, p0, Lcom/inca/security/sa;->iiIIIiiiiI:S

    .line 235
    iget-short v1, p0, Lcom/inca/security/sa;->iiIIIiiiiI:S

    if-eqz v1, :cond_2

    .line 233
    invoke-virtual {v4, v3}, Ljava/util/zip/CRC32;->update([B)V

    .line 209
    :cond_2
    invoke-virtual {v4}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v4

    cmp-long v1, v4, v6

    if-nez v1, :cond_0

    .line 272
    invoke-virtual {p0, v2}, Lcom/inca/security/sa;->IiiiIIIIii(I)Z

    move-result v0

    goto/16 :goto_0

    .line 336
    :catch_0
    move-exception v1

    goto/16 :goto_0

    .line 254
    :catch_1
    move-exception v1

    goto/16 :goto_0

    .line 345
    :catch_2
    move-exception v1

    goto/16 :goto_0

    .line 295
    :catch_3
    move-exception v1

    goto/16 :goto_0

    .line 358
    :catch_4
    move-exception v1

    goto/16 :goto_0

    .line 298
    :catch_5
    move-exception v1

    goto/16 :goto_0

    .line 247
    :catch_6
    move-exception v1

    goto/16 :goto_0

    .line 321
    :catch_7
    move-exception v1

    goto/16 :goto_0

    .line 263
    :catch_8
    move-exception v1

    goto/16 :goto_0
.end method

.method private synthetic IiiiIIIIii([B)[B
    .locals 1
    .param p1, "arg0"    # [B

    .prologue
    .line 24
    iget-object v0, p0, Lcom/inca/security/sa;->IIiiIiIIii:[B

    invoke-static {v0, p1}, Lcom/inca/security/ca;->IiiiIIIIii([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method private synthetic IiiiIIIIii([B[B)[B
    .locals 1
    .param p1, "arg0"    # [B
    .param p2, "arg1"    # [B

    .prologue
    .line 102
    invoke-static {p1, p2}, Lcom/inca/security/ca;->IIiIIiIiIi([B[B)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public synthetic IIiIIiIiIi()J
    .locals 2

    .prologue
    .line 440
    iget-wide v0, p0, Lcom/inca/security/sa;->IIiIIIIiIi:J

    return-wide v0
.end method

.method public synthetic IiiiIIIIii(Lcom/inca/security/sa;)I
    .locals 6
    .param p1, "arg0"    # Lcom/inca/security/sa;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 237
    .line 430
    invoke-virtual {p0}, Lcom/inca/security/sa;->IiiiIIIIii()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/inca/security/sa;->IiiiIIIIii()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 425
    :cond_0
    :goto_0
    return v0

    .line 381
    :cond_1
    invoke-virtual {p0}, Lcom/inca/security/sa;->IiiiIIIIii()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/inca/security/sa;->IiiiIIIIii()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 419
    invoke-virtual {p0}, Lcom/inca/security/sa;->iIiIIiIIIi()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/inca/security/sa;->iIiIIiIIIi()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    move v0, v1

    .line 245
    goto :goto_0

    :cond_2
    move v0, v1

    .line 425
    goto :goto_0
.end method

.method public synthetic IiiiIIIIii()J
    .locals 2

    .prologue
    .line 471
    iget-wide v0, p0, Lcom/inca/security/sa;->IIiIiIIIii:J

    return-wide v0
.end method

.method public synthetic IiiiIIIIii()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/inca/security/sa;->iiIIiIiIii:Ljava/util/ArrayList;

    return-object v0
.end method

.method public synthetic IiiiIIIIii()S
    .locals 1

    .prologue
    .line 359
    iget-short v0, p0, Lcom/inca/security/sa;->iiIIIiiiiI:S

    return v0
.end method

.method public synthetic IiiiIIIIii()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 40
    .line 152
    iget-object v1, p0, Lcom/inca/security/sa;->IIiIIIIIii:Ljava/io/File;

    if-nez v1, :cond_1

    .line 189
    :cond_0
    :goto_0
    return v0

    .line 155
    :cond_1
    iget-object v1, p0, Lcom/inca/security/sa;->IIiIIIIIii:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 190
    const/16 v1, 0x100

    new-array v1, v1, [B

    .line 26
    const/16 v2, 0x80

    new-array v2, v2, [B

    .line 8
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/inca/security/sa;->IIiIIIIIii:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v2, p0, Lcom/inca/security/sa;->iiIiIIIiiI:Ljava/io/InputStream;

    .line 50
    const/4 v2, -0x1

    iget-object v3, p0, Lcom/inca/security/sa;->iiIiIIIiiI:Ljava/io/InputStream;

    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-eq v2, v3, :cond_3

    .line 126
    iget-object v2, p0, Lcom/inca/security/sa;->iiiiIIIiii:[B

    invoke-direct {p0, v2, v1}, Lcom/inca/security/sa;->IiiiIIIIii([B[B)[B
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 114
    if-nez v1, :cond_2

    .line 183
    :try_start_1
    iget-object v1, p0, Lcom/inca/security/sa;->iiIiIIIiiI:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/inca/security/sa;->iiIiIIIiiI:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 170
    :catch_0
    move-exception v1

    goto :goto_0

    .line 164
    :cond_2
    :try_start_2
    invoke-direct {p0, v1}, Lcom/inca/security/sa;->IiiiIIIIii([B)Z
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    .line 183
    :cond_3
    :try_start_3
    iget-object v1, p0, Lcom/inca/security/sa;->iiIiIIIiiI:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/inca/security/sa;->iiIiIIIiiI:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 170
    :catch_1
    move-exception v1

    goto :goto_0

    .line 188
    :catch_2
    move-exception v1

    .line 183
    :try_start_4
    iget-object v1, p0, Lcom/inca/security/sa;->iiIiIIIiiI:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/inca/security/sa;->iiIiIIIiiI:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_0

    .line 170
    :catch_3
    move-exception v1

    goto :goto_0

    .line 86
    :catch_4
    move-exception v1

    .line 183
    :try_start_5
    iget-object v1, p0, Lcom/inca/security/sa;->iiIiIIIiiI:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/inca/security/sa;->iiIiIIIiiI:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_0

    .line 170
    :catch_5
    move-exception v1

    goto :goto_0

    .line 66
    :catchall_0
    move-exception v0

    .line 183
    :try_start_6
    iget-object v1, p0, Lcom/inca/security/sa;->iiIiIIIiiI:Ljava/io/InputStream;

    if-eqz v1, :cond_4

    .line 5
    iget-object v1, p0, Lcom/inca/security/sa;->iiIiIIIiiI:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 163
    :cond_4
    :goto_1
    throw v0

    .line 170
    :catch_6
    move-exception v1

    goto :goto_1
.end method

.method public synthetic IiiiIIIIii(I)Z
    .locals 12
    .param p1, "arg0"    # I

    .prologue
    .line 14
    const/4 v3, 0x0

    .line 191
    const/4 v1, 0x0

    .line 158
    const/4 v2, 0x0

    .line 35
    const/4 v0, 0x4

    new-array v6, v0, [B

    .line 89
    iget v0, p0, Lcom/inca/security/sa;->IiiiiIiiIi:I

    new-array v0, v0, [B

    .line 142
    const/4 v4, 0x0

    .line 52
    const/4 v5, -0x1

    :try_start_0
    iget-object v7, p0, Lcom/inca/security/sa;->iiIiIIIiiI:Ljava/io/InputStream;

    invoke-virtual {v7, v0}, Ljava/io/InputStream;->read([B)I

    move-result v7

    if-eq v5, v7, :cond_0

    .line 4
    invoke-direct {p0, v0}, Lcom/inca/security/sa;->IiiiIIIIii([B)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 27
    :goto_0
    if-nez v0, :cond_1

    .line 34
    const/4 v0, 0x0

    .line 384
    :goto_1
    return v0

    .line 148
    :catch_0
    move-exception v0

    .line 113
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    move-object v0, v4

    goto :goto_0

    .line 80
    :cond_1
    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 71
    const/4 v0, 0x0

    move v4, v1

    move v5, v3

    move v1, v0

    move v3, v0

    move v0, v2

    :goto_2
    if-ge v1, p1, :cond_2

    .line 18
    new-instance v1, Lcom/inca/security/ha;

    invoke-direct {v1}, Lcom/inca/security/ha;-><init>()V

    .line 51
    :try_start_1
    invoke-virtual {v7, v6}, Ljava/io/ByteArrayInputStream;->read([B)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    move v2, v0

    .line 111
    :goto_3
    const/4 v8, -0x1

    if-ne v2, v8, :cond_3

    .line 328
    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    .line 193
    :catch_1
    move-exception v2

    .line 144
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move v2, v0

    goto :goto_3

    .line 129
    :cond_3
    add-int/2addr v4, v0

    .line 95
    invoke-static {v6}, Lcom/inca/security/va;->iIiIIiIIIi([B)I

    move-result v2

    add-int/2addr v5, v2

    .line 137
    :try_start_2
    invoke-virtual {v7, v6}, Ljava/io/ByteArrayInputStream;->read([B)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v0

    move v2, v0

    .line 57
    :goto_4
    const/4 v8, -0x1

    if-eq v2, v8, :cond_2

    .line 74
    add-int/2addr v4, v0

    .line 64
    invoke-static {v6}, Lcom/inca/security/va;->iIiIIiIIIi([B)I

    move-result v2

    .line 84
    iput v2, v1, Lcom/inca/security/ha;->IIIIiiIiII:I

    .line 154
    iget-wide v8, p0, Lcom/inca/security/sa;->IIiIIIIiIi:J

    int-to-long v10, v2

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/inca/security/sa;->IIiIIIIiIi:J

    .line 203
    :try_start_3
    invoke-virtual {v7, v6}, Ljava/io/ByteArrayInputStream;->read([B)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v0

    move v2, v0

    .line 62
    :goto_5
    const/4 v8, -0x1

    if-eq v0, v8, :cond_2

    .line 265
    invoke-static {v6}, Lcom/inca/security/va;->iIiIIiIIIi([B)I

    move-result v0

    int-to-long v8, v0

    .line 368
    add-int/2addr v4, v2

    .line 228
    iput-wide v8, v1, Lcom/inca/security/ha;->IiIiIIIiIi:J

    .line 271
    :try_start_4
    iget-object v0, v1, Lcom/inca/security/ha;->IiIiIiiIii:[B

    invoke-virtual {v7, v0}, Ljava/io/ByteArrayInputStream;->read([B)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    move-result v0

    move v2, v0

    .line 216
    :goto_6
    const/4 v8, -0x1

    if-eq v2, v8, :cond_2

    .line 460
    add-int/2addr v4, v0

    .line 483
    sub-int v2, v5, v4

    new-array v8, v2, [B

    .line 232
    :try_start_5
    invoke-virtual {v7, v8}, Ljava/io/ByteArrayInputStream;->read([B)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    move-result v0

    move v2, v0

    move-object v0, v1

    .line 277
    :goto_7
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v8}, Ljava/lang/String;-><init>([B)V

    iput-object v9, v0, Lcom/inca/security/ha;->IiiIiiiIiI:Ljava/lang/String;

    .line 357
    add-int/2addr v4, v2

    .line 296
    iget v0, p0, Lcom/inca/security/sa;->iiiIiiiiII:I

    if-nez v0, :cond_5

    .line 404
    iget-object v0, v1, Lcom/inca/security/ha;->IiiIiiiIiI:Ljava/lang/String;

    const-string v8, "x86"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 71
    :cond_4
    add-int/lit8 v0, v3, 0x1

    move v1, v0

    move v3, v0

    move v0, v2

    goto :goto_2

    .line 196
    :catch_2
    move-exception v2

    .line 23
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move v2, v0

    goto :goto_4

    .line 149
    :catch_3
    move-exception v2

    .line 186
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move v2, v0

    goto :goto_5

    .line 361
    :catch_4
    move-exception v0

    .line 231
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v0, v2

    goto :goto_6

    .line 310
    :catch_5
    move-exception v2

    .line 335
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move v2, v0

    move-object v0, v1

    goto :goto_7

    .line 260
    :cond_5
    iget-object v0, v1, Lcom/inca/security/ha;->IiiIiiiIiI:Ljava/lang/String;

    const-string v8, "armeabi"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 447
    :cond_6
    iget-object v0, p0, Lcom/inca/security/sa;->iiIIiIiIii:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    if-eq v5, v4, :cond_4

    .line 384
    const/4 v0, 0x0

    goto/16 :goto_1
.end method

.method public synthetic IiiiIIIIii(Lcom/inca/security/ha;Ljava/lang/String;)Z
    .locals 8
    .param p1, "arg0"    # Lcom/inca/security/ha;
    .param p2, "arg1"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 256
    .line 488
    const/4 v1, 0x0

    .line 212
    :try_start_0
    const-string v2, "\u0007p\u007f" #MD5

    invoke-static {v2}, Lcom/inca/security/ua;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 406
    iget-object v2, p1, Lcom/inca/security/ha;->IiiIiiiIiI:Ljava/lang/String;

    const-string v3, "\u0006" #_

    invoke-static {v3}, Lcom/inca/security/tb;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 413
    const-string v3, ""

    .line 275
    const/4 v3, -0x1

    if-eq v3, v2, :cond_0

    .line 367
    iget-object v3, p1, Lcom/inca/security/ha;->IiiIiiiIiI:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 379
    :goto_0
    new-instance v3, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    invoke-virtual {v5, v6, p2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 434
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 432
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 383
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v5

    .line 314
    new-array v6, v5, [B

    move-object v1, v2

    move v3, v0

    .line 427
    :goto_1
    sub-int v7, v5, v3

    invoke-virtual {v1, v6, v3, v7}, Ljava/io/FileInputStream;->read([BII)I

    move-result v7

    if-lez v7, :cond_1

    .line 428
    add-int v1, v3, v7

    .line 324
    const/4 v3, 0x0

    invoke-virtual {v4, v6, v3, v7}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v3, v1

    move-object v1, v2

    goto :goto_1

    .line 385
    :cond_0
    :try_start_2
    iget-object v2, p1, Lcom/inca/security/ha;->IiiIiiiIiI:Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 349
    :cond_1
    :try_start_3
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 444
    iget-object v3, p1, Lcom/inca/security/ha;->IiIiIiiIii:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v1

    if-eqz v1, :cond_2

    .line 323
    const/4 v0, 0x1

    .line 220
    :cond_2
    :goto_2
    if-eqz v2, :cond_3

    .line 332
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 424
    :cond_3
    :goto_3
    return v0

    .line 420
    :catch_0
    move-exception v2

    .line 220
    :goto_4
    if-eqz v1, :cond_3

    .line 332
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    .line 340
    :catch_1
    move-exception v1

    goto :goto_3

    .line 445
    :catch_2
    move-exception v2

    .line 220
    :goto_5
    if-eqz v1, :cond_3

    .line 332
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_3

    .line 340
    :catch_3
    move-exception v1

    goto :goto_3

    .line 360
    :catchall_0
    move-exception v0

    .line 220
    :goto_6
    if-eqz v1, :cond_4

    .line 332
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 443
    :cond_4
    :goto_7
    throw v0

    .line 340
    :catch_4
    move-exception v1

    goto :goto_3

    :catch_5
    move-exception v1

    goto :goto_7

    .line 360
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_6

    .line 445
    :catch_6
    move-exception v1

    move-object v1, v2

    goto :goto_5

    .line 420
    :catch_7
    move-exception v1

    move-object v1, v2

    goto :goto_4

    :cond_5
    move-object v2, v1

    goto :goto_2
.end method

.method public synthetic IiiiIIIIii(Ljava/io/File;)Z
    .locals 4
    .param p1, "arg0"    # Ljava/io/File;

    .prologue
    const/4 v0, 0x0

    .line 108
    .line 13
    if-nez p1, :cond_1

    .line 206
    :cond_0
    :goto_0
    return v0

    .line 167
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 60
    const/16 v1, 0x100

    new-array v1, v1, [B

    .line 54
    const/16 v2, 0x80

    new-array v2, v2, [B

    .line 156
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v2, p0, Lcom/inca/security/sa;->iiIiIIIiiI:Ljava/io/InputStream;

    .line 173
    const/4 v2, -0x1

    iget-object v3, p0, Lcom/inca/security/sa;->iiIiIIIiiI:Ljava/io/InputStream;

    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-eq v2, v3, :cond_3

    .line 39
    iget-object v2, p0, Lcom/inca/security/sa;->iiiiIIIiii:[B

    invoke-direct {p0, v2, v1}, Lcom/inca/security/sa;->IiiiIIIIii([B[B)[B
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 145
    if-nez v1, :cond_2

    .line 185
    :try_start_1
    iget-object v1, p0, Lcom/inca/security/sa;->iiIiIIIiiI:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    .line 28
    iget-object v1, p0, Lcom/inca/security/sa;->iiIiIIIiiI:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 200
    :catch_0
    move-exception v1

    goto :goto_0

    .line 151
    :cond_2
    :try_start_2
    invoke-direct {p0, v1}, Lcom/inca/security/sa;->IiiiIIIIii([B)Z
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    .line 185
    :cond_3
    :try_start_3
    iget-object v1, p0, Lcom/inca/security/sa;->iiIiIIIiiI:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    .line 28
    iget-object v1, p0, Lcom/inca/security/sa;->iiIiIIIiiI:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 200
    :catch_1
    move-exception v1

    goto :goto_0

    .line 70
    :catch_2
    move-exception v1

    .line 185
    :try_start_4
    iget-object v1, p0, Lcom/inca/security/sa;->iiIiIIIiiI:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    .line 28
    iget-object v1, p0, Lcom/inca/security/sa;->iiIiIIIiiI:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_0

    .line 200
    :catch_3
    move-exception v1

    goto :goto_0

    .line 201
    :catch_4
    move-exception v1

    .line 185
    :try_start_5
    iget-object v1, p0, Lcom/inca/security/sa;->iiIiIIIiiI:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    .line 28
    iget-object v1, p0, Lcom/inca/security/sa;->iiIiIIIiiI:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_0

    .line 200
    :catch_5
    move-exception v1

    goto :goto_0

    .line 197
    :catchall_0
    move-exception v0

    .line 185
    :try_start_6
    iget-object v1, p0, Lcom/inca/security/sa;->iiIiIIIiiI:Ljava/io/InputStream;

    if-eqz v1, :cond_4

    .line 28
    iget-object v1, p0, Lcom/inca/security/sa;->iiIiIIIiiI:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 184
    :cond_4
    :goto_1
    throw v0

    .line 200
    :catch_6
    move-exception v1

    goto :goto_1
.end method

.method public synthetic IiiiIIIIii(Ljava/lang/String;)Z
    .locals 3
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 268
    const/4 v1, 0x1

    .line 463
    iget-object v0, p0, Lcom/inca/security/sa;->iiIIiIiIii:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inca/security/ha;

    .line 441
    invoke-virtual {p0, v0, p1}, Lcom/inca/security/sa;->IiiiIIIIii(Lcom/inca/security/ha;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 219
    const/4 v0, 0x0

    .line 450
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 353
    goto :goto_0
.end method

.method public synthetic iIiIIiIIIi()J
    .locals 2

    .prologue
    .line 297
    iget v0, p0, Lcom/inca/security/sa;->IiIiIIIiIi:I

    int-to-long v0, v0

    return-wide v0
.end method
