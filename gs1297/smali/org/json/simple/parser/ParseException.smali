.class public Lorg/json/simple/parser/ParseException;
.super Ljava/lang/Exception;
.source "ParseException.java"


# static fields
.field public static final ERROR_UNEXPECTED_CHAR:I = 0x0

.field public static final ERROR_UNEXPECTED_EXCEPTION:I = 0x2

.field public static final ERROR_UNEXPECTED_TOKEN:I = 0x1

.field private static final serialVersionUID:J = -0x6d5dddf5349df2a4L


# instance fields
.field private errorType:I

.field private position:I

.field private unexpectedObject:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "errorType"    # I

    .prologue
    .line 21
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lorg/json/simple/parser/ParseException;-><init>(IILjava/lang/Object;)V

    .line 22
    return-void
.end method

.method public constructor <init>(IILjava/lang/Object;)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "errorType"    # I
    .param p3, "unexpectedObject"    # Ljava/lang/Object;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 29
    iput p1, p0, Lorg/json/simple/parser/ParseException;->position:I

    .line 30
    iput p2, p0, Lorg/json/simple/parser/ParseException;->errorType:I

    .line 31
    iput-object p3, p0, Lorg/json/simple/parser/ParseException;->unexpectedObject:Ljava/lang/Object;

    .line 32
    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;)V
    .locals 1
    .param p1, "errorType"    # I
    .param p2, "unexpectedObject"    # Ljava/lang/Object;

    .prologue
    .line 25
    const/4 v0, -0x1

    invoke-direct {p0, v0, p1, p2}, Lorg/json/simple/parser/ParseException;-><init>(IILjava/lang/Object;)V

    .line 26
    return-void
.end method


# virtual methods
.method public getErrorType()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lorg/json/simple/parser/ParseException;->errorType:I

    return v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lorg/json/simple/parser/ParseException;->position:I

    return v0
.end method

.method public getUnexpectedObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lorg/json/simple/parser/ParseException;->unexpectedObject:Ljava/lang/Object;

    return-object v0
.end method

.method public setErrorType(I)V
    .locals 0
    .param p1, "errorType"    # I

    .prologue
    .line 39
    iput p1, p0, Lorg/json/simple/parser/ParseException;->errorType:I

    .line 40
    return-void
.end method

.method public setPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 52
    iput p1, p0, Lorg/json/simple/parser/ParseException;->position:I

    .line 53
    return-void
.end method

.method public setUnexpectedObject(Ljava/lang/Object;)V
    .locals 0
    .param p1, "unexpectedObject"    # Ljava/lang/Object;

    .prologue
    .line 68
    iput-object p1, p0, Lorg/json/simple/parser/ParseException;->unexpectedObject:Ljava/lang/Object;

    .line 69
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 72
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 74
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget v1, p0, Lorg/json/simple/parser/ParseException;->errorType:I

    packed-switch v1, :pswitch_data_0

    .line 85
    const-string v1, "Unkown error at position "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lorg/json/simple/parser/ParseException;->position:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 88
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 76
    :pswitch_0
    const-string v1, "Unexpected character ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/json/simple/parser/ParseException;->unexpectedObject:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ") at position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lorg/json/simple/parser/ParseException;->position:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 79
    :pswitch_1
    const-string v1, "Unexpected token "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/json/simple/parser/ParseException;->unexpectedObject:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " at position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lorg/json/simple/parser/ParseException;->position:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 82
    :pswitch_2
    const-string v1, "Unexpected exception at position "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lorg/json/simple/parser/ParseException;->position:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/json/simple/parser/ParseException;->unexpectedObject:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 74
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
