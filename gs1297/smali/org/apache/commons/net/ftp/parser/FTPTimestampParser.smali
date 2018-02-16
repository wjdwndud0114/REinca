.class public interface abstract Lorg/apache/commons/net/ftp/parser/FTPTimestampParser;
.super Ljava/lang/Object;
.source "FTPTimestampParser.java"


# static fields
.field public static final DEFAULT_RECENT_SDF:Ljava/lang/String; = "MMM d HH:mm"

.field public static final DEFAULT_SDF:Ljava/lang/String; = "MMM d yyyy"


# virtual methods
.method public abstract parseTimestamp(Ljava/lang/String;)Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method
