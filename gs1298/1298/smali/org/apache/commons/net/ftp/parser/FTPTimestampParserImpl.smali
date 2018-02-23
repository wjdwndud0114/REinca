.class public Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;
.super Ljava/lang/Object;
.source "FTPTimestampParserImpl.java"

# interfaces
.implements Lorg/apache/commons/net/ftp/Configurable;
.implements Lorg/apache/commons/net/ftp/parser/FTPTimestampParser;


# instance fields
.field private defaultDateFormat:Ljava/text/SimpleDateFormat;

.field private lenientFutureDates:Z

.field private recentDateFormat:Ljava/text/SimpleDateFormat;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->lenientFutureDates:Z

    .line 53
    const-string v0, "MMM d yyyy"

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->setDefaultDateFormat(Ljava/lang/String;)V

    .line 54
    const-string v0, "MMM d HH:mm"

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->setRecentDateFormat(Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method private setDefaultDateFormat(Ljava/lang/String;)V
    .locals 2
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    .line 170
    if-eqz p1, :cond_0

    .line 171
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->defaultDateFormat:Ljava/text/SimpleDateFormat;

    .line 172
    iget-object v0, p0, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->defaultDateFormat:Ljava/text/SimpleDateFormat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setLenient(Z)V

    .line 174
    :cond_0
    return-void
.end method

.method private setRecentDateFormat(Ljava/lang/String;)V
    .locals 2
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    .line 191
    if-eqz p1, :cond_0

    .line 192
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->recentDateFormat:Ljava/text/SimpleDateFormat;

    .line 193
    iget-object v0, p0, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->recentDateFormat:Ljava/text/SimpleDateFormat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setLenient(Z)V

    .line 195
    :cond_0
    return-void
.end method

.method private setServerTimeZone(Ljava/lang/String;)V
    .locals 2
    .param p1, "serverTimeZoneId"    # Ljava/lang/String;

    .prologue
    .line 219
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    .line 220
    .local v0, "serverTimeZone":Ljava/util/TimeZone;
    if-eqz p1, :cond_0

    .line 221
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 223
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->defaultDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 224
    iget-object v1, p0, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->recentDateFormat:Ljava/text/SimpleDateFormat;

    if-eqz v1, :cond_1

    .line 225
    iget-object v1, p0, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->recentDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 227
    :cond_1
    return-void
.end method


# virtual methods
.method public configure(Lorg/apache/commons/net/ftp/FTPClientConfig;)V
    .locals 7
    .param p1, "config"    # Lorg/apache/commons/net/ftp/FTPClientConfig;

    .prologue
    const/4 v6, 0x0

    .line 253
    const/4 v1, 0x0

    .line 255
    .local v1, "dfs":Ljava/text/DateFormatSymbols;
    invoke-virtual {p1}, Lorg/apache/commons/net/ftp/FTPClientConfig;->getServerLanguageCode()Ljava/lang/String;

    move-result-object v2

    .line 256
    .local v2, "languageCode":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/apache/commons/net/ftp/FTPClientConfig;->getShortMonthNames()Ljava/lang/String;

    move-result-object v4

    .line 257
    .local v4, "shortmonths":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 258
    invoke-static {v4}, Lorg/apache/commons/net/ftp/FTPClientConfig;->getDateFormatSymbols(Ljava/lang/String;)Ljava/text/DateFormatSymbols;

    move-result-object v1

    .line 266
    :goto_0
    invoke-virtual {p1}, Lorg/apache/commons/net/ftp/FTPClientConfig;->getRecentDateFormatStr()Ljava/lang/String;

    move-result-object v3

    .line 267
    .local v3, "recentFormatString":Ljava/lang/String;
    if-nez v3, :cond_2

    .line 268
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->recentDateFormat:Ljava/text/SimpleDateFormat;

    .line 274
    :goto_1
    invoke-virtual {p1}, Lorg/apache/commons/net/ftp/FTPClientConfig;->getDefaultDateFormatStr()Ljava/lang/String;

    move-result-object v0

    .line 275
    .local v0, "defaultFormatString":Ljava/lang/String;
    if-nez v0, :cond_3

    .line 276
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "defaultFormatString cannot be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 259
    .end local v0    # "defaultFormatString":Ljava/lang/String;
    .end local v3    # "recentFormatString":Ljava/lang/String;
    :cond_0
    if-eqz v2, :cond_1

    .line 260
    invoke-static {v2}, Lorg/apache/commons/net/ftp/FTPClientConfig;->lookupDateFormatSymbols(Ljava/lang/String;)Ljava/text/DateFormatSymbols;

    move-result-object v1

    goto :goto_0

    .line 262
    :cond_1
    const-string v5, "en"

    invoke-static {v5}, Lorg/apache/commons/net/ftp/FTPClientConfig;->lookupDateFormatSymbols(Ljava/lang/String;)Ljava/text/DateFormatSymbols;

    move-result-object v1

    goto :goto_0

    .line 270
    .restart local v3    # "recentFormatString":Ljava/lang/String;
    :cond_2
    new-instance v5, Ljava/text/SimpleDateFormat;

    invoke-direct {v5, v3, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/text/DateFormatSymbols;)V

    iput-object v5, p0, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->recentDateFormat:Ljava/text/SimpleDateFormat;

    .line 271
    iget-object v5, p0, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->recentDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->setLenient(Z)V

    goto :goto_1

    .line 278
    .restart local v0    # "defaultFormatString":Ljava/lang/String;
    :cond_3
    new-instance v5, Ljava/text/SimpleDateFormat;

    invoke-direct {v5, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/text/DateFormatSymbols;)V

    iput-object v5, p0, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->defaultDateFormat:Ljava/text/SimpleDateFormat;

    .line 279
    iget-object v5, p0, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->defaultDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->setLenient(Z)V

    .line 281
    invoke-virtual {p1}, Lorg/apache/commons/net/ftp/FTPClientConfig;->getServerTimeZoneId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->setServerTimeZone(Ljava/lang/String;)V

    .line 283
    invoke-virtual {p1}, Lorg/apache/commons/net/ftp/FTPClientConfig;->isLenientFutureDates()Z

    move-result v5

    iput-boolean v5, p0, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->lenientFutureDates:Z

    .line 284
    return-void
.end method

.method public getDefaultDateFormat()Ljava/text/SimpleDateFormat;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->defaultDateFormat:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method public getDefaultDateFormatString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->defaultDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRecentDateFormat()Ljava/text/SimpleDateFormat;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->recentDateFormat:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method public getRecentDateFormatString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->recentDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServerTimeZone()Ljava/util/TimeZone;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->defaultDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public getShortMonths()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->defaultDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->getDateFormatSymbols()Ljava/text/DateFormatSymbols;

    move-result-object v0

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method isLenientFutureDates()Z
    .locals 1

    .prologue
    .line 289
    iget-boolean v0, p0, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->lenientFutureDates:Z

    return v0
.end method

.method public parseTimestamp(Ljava/lang/String;)Ljava/util/Calendar;
    .locals 2
    .param p1, "timestampStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 75
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 76
    .local v0, "now":Ljava/util/Calendar;
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->parseTimestamp(Ljava/lang/String;Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v1

    return-object v1
.end method

.method public parseTimestamp(Ljava/lang/String;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 11
    .param p1, "timestampStr"    # Ljava/lang/String;
    .param p2, "serverTime"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 94
    invoke-virtual {p2}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Calendar;

    .line 95
    .local v5, "working":Ljava/util/Calendar;
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->getServerTimeZone()Ljava/util/TimeZone;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 97
    const/4 v2, 0x0

    .line 99
    .local v2, "parsed":Ljava/util/Date;
    iget-object v7, p0, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->recentDateFormat:Ljava/text/SimpleDateFormat;

    if-eqz v7, :cond_2

    .line 100
    invoke-virtual {p2}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Calendar;

    .line 101
    .local v1, "now":Ljava/util/Calendar;
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->getServerTimeZone()Ljava/util/TimeZone;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 102
    iget-boolean v7, p0, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->lenientFutureDates:Z

    if-eqz v7, :cond_0

    .line 105
    const/4 v7, 0x5

    invoke-virtual {v1, v7, v10}, Ljava/util/Calendar;->add(II)V

    .line 116
    :cond_0
    invoke-virtual {v1, v10}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 117
    .local v6, "year":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 118
    .local v4, "timeStampStrPlusYear":Ljava/lang/String;
    new-instance v0, Ljava/text/SimpleDateFormat;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->recentDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v8}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " yyyy"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->recentDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v8}, Ljava/text/SimpleDateFormat;->getDateFormatSymbols()Ljava/text/DateFormatSymbols;

    move-result-object v8

    invoke-direct {v0, v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/text/DateFormatSymbols;)V

    .line 120
    .local v0, "hackFormatter":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0, v9}, Ljava/text/SimpleDateFormat;->setLenient(Z)V

    .line 121
    iget-object v7, p0, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->recentDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v7}, Ljava/text/SimpleDateFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 122
    new-instance v3, Ljava/text/ParsePosition;

    invoke-direct {v3, v9}, Ljava/text/ParsePosition;-><init>(I)V

    .line 123
    .local v3, "pp":Ljava/text/ParsePosition;
    invoke-virtual {v0, v4, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v2

    .line 125
    if-eqz v2, :cond_2

    invoke-virtual {v3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v7

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v7, v8, :cond_2

    .line 126
    invoke-virtual {v5, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 127
    invoke-virtual {v5, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 128
    const/4 v7, -0x1

    invoke-virtual {v5, v10, v7}, Ljava/util/Calendar;->add(II)V

    .line 151
    .end local v0    # "hackFormatter":Ljava/text/SimpleDateFormat;
    .end local v1    # "now":Ljava/util/Calendar;
    .end local v4    # "timeStampStrPlusYear":Ljava/lang/String;
    .end local v6    # "year":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v5

    .line 134
    .end local v3    # "pp":Ljava/text/ParsePosition;
    :cond_2
    new-instance v3, Ljava/text/ParsePosition;

    invoke-direct {v3, v9}, Ljava/text/ParsePosition;-><init>(I)V

    .line 135
    .restart local v3    # "pp":Ljava/text/ParsePosition;
    iget-object v7, p0, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->defaultDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v7, p1, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v2

    .line 143
    if-eqz v2, :cond_3

    invoke-virtual {v3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v7, v8, :cond_3

    .line 144
    invoke-virtual {v5, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    goto :goto_0

    .line 146
    :cond_3
    new-instance v7, Ljava/text/ParseException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Timestamp \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' could not be parsed using a server time of "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v9

    invoke-direct {v7, v8, v9}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v7
.end method

.method setLenientFutureDates(Z)V
    .locals 0
    .param p1, "lenientFutureDates"    # Z

    .prologue
    .line 295
    iput-boolean p1, p0, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->lenientFutureDates:Z

    .line 296
    return-void
.end method
