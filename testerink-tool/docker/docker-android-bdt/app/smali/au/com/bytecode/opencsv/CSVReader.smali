.class public Lau/com/bytecode/opencsv/CSVReader;
.super Ljava/lang/Object;


# static fields
.field public static final DEFAULT_QUOTE_CHARACTER:C = '\"'

.field public static final DEFAULT_SEPARATOR:C = ','

.field public static final DEFAULT_SKIP_LINES:I


# instance fields
.field private br:Ljava/io/BufferedReader;

.field private hasNext:Z

.field private linesSkiped:Z

.field private quotechar:C

.field private separator:C

.field private skipLines:I


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1

    const/16 v0, 0x2c

    invoke-direct {p0, p1, v0}, Lau/com/bytecode/opencsv/CSVReader;-><init>(Ljava/io/Reader;C)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;C)V
    .locals 1

    const/16 v0, 0x22

    invoke-direct {p0, p1, p2, v0}, Lau/com/bytecode/opencsv/CSVReader;-><init>(Ljava/io/Reader;CC)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;CC)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lau/com/bytecode/opencsv/CSVReader;-><init>(Ljava/io/Reader;CCI)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;CCI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lau/com/bytecode/opencsv/CSVReader;->hasNext:Z

    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lau/com/bytecode/opencsv/CSVReader;->br:Ljava/io/BufferedReader;

    iput-char p2, p0, Lau/com/bytecode/opencsv/CSVReader;->separator:C

    iput-char p3, p0, Lau/com/bytecode/opencsv/CSVReader;->quotechar:C

    iput p4, p0, Lau/com/bytecode/opencsv/CSVReader;->skipLines:I

    return-void
.end method

.method private getNextLine()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lau/com/bytecode/opencsv/CSVReader;->linesSkiped:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lau/com/bytecode/opencsv/CSVReader;->skipLines:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lau/com/bytecode/opencsv/CSVReader;->br:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lau/com/bytecode/opencsv/CSVReader;->linesSkiped:Z

    :cond_1
    iget-object v0, p0, Lau/com/bytecode/opencsv/CSVReader;->br:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    iput-boolean v1, p0, Lau/com/bytecode/opencsv/CSVReader;->hasNext:Z

    :cond_2
    iget-boolean v1, p0, Lau/com/bytecode/opencsv/CSVReader;->hasNext:Z

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method private parseLine(Ljava/lang/String;)[Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    move-object v3, p1

    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lau/com/bytecode/opencsv/CSVReader;->getNextLine()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    goto/16 :goto_4

    :cond_1
    move-object v4, v1

    move v1, p1

    const/4 p1, 0x0

    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-ge p1, v5, :cond_6

    invoke-virtual {v3, p1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    iget-char v6, p0, Lau/com/bytecode/opencsv/CSVReader;->quotechar:C

    if-ne v5, v6, :cond_3

    if-eqz v1, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v7, p1, 0x1

    if-le v6, v7, :cond_2

    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    iget-char v8, p0, Lau/com/bytecode/opencsv/CSVReader;->quotechar:C

    if-ne v6, v8, :cond_2

    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move p1, v7

    goto :goto_3

    :cond_2
    xor-int/lit8 v1, v1, 0x1

    const/4 v6, 0x2

    if-le p1, v6, :cond_5

    add-int/lit8 v6, p1, -0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    iget-char v7, p0, Lau/com/bytecode/opencsv/CSVReader;->separator:C

    if-eq v6, v7, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v7, p1, 0x1

    if-le v6, v7, :cond_5

    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    iget-char v7, p0, Lau/com/bytecode/opencsv/CSVReader;->separator:C

    if-eq v6, v7, :cond_5

    goto :goto_2

    :cond_3
    iget-char v6, p0, Lau/com/bytecode/opencsv/CSVReader;->separator:C

    if-ne v5, v6, :cond_4

    if-nez v1, :cond_4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    goto :goto_3

    :cond_4
    :goto_2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_5
    :goto_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_6
    if-nez v1, :cond_7

    move-object v1, v4

    :goto_4
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array p1, v2, [Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1

    :cond_7
    move p1, v1

    move-object v1, v4

    goto/16 :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lau/com/bytecode/opencsv/CSVReader;->br:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    return-void
.end method

.method public readAll()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    :goto_0
    iget-boolean v1, p0, Lau/com/bytecode/opencsv/CSVReader;->hasNext:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lau/com/bytecode/opencsv/CSVReader;->readNext()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public readNext()[Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lau/com/bytecode/opencsv/CSVReader;->getNextLine()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lau/com/bytecode/opencsv/CSVReader;->hasNext:Z

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lau/com/bytecode/opencsv/CSVReader;->parseLine(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
