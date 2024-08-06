.class public final La/l;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/regex/Pattern;

.field private static final b:Ljava/util/regex/Pattern;

.field private static final c:Ljava/util/regex/Pattern;

.field private static final d:Ljava/util/regex/Pattern;


# instance fields
.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:J

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private final j:Z

.field private final k:Z

.field private final l:Z

.field private final m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "(\\d{2,4})[^\\d]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, La/l;->a:Ljava/util/regex/Pattern;

    const-string v0, "(?i)(jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec).*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, La/l;->b:Ljava/util/regex/Pattern;

    const-string v0, "(\\d{1,2})[^\\d]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, La/l;->c:Ljava/util/regex/Pattern;

    const-string v0, "(\\d{1,2}):(\\d{1,2}):(\\d{1,2})[^\\d]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, La/l;->d:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZZZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/l;->e:Ljava/lang/String;

    iput-object p2, p0, La/l;->f:Ljava/lang/String;

    iput-wide p3, p0, La/l;->g:J

    iput-object p5, p0, La/l;->h:Ljava/lang/String;

    iput-object p6, p0, La/l;->i:Ljava/lang/String;

    iput-boolean p7, p0, La/l;->j:Z

    iput-boolean p8, p0, La/l;->k:Z

    iput-boolean p9, p0, La/l;->m:Z

    iput-boolean p10, p0, La/l;->l:Z

    return-void
.end method

.method private static a(Ljava/lang/String;IIZ)I
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    move v0, p1

    :goto_0
    if-ge v0, p2, :cond_5

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x20

    if-ge v1, v4, :cond_0

    const/16 v4, 0x9

    if-ne v1, v4, :cond_4

    :cond_0
    const/16 v4, 0x7f

    if-ge v1, v4, :cond_4

    const/16 v4, 0x30

    if-lt v1, v4, :cond_1

    const/16 v4, 0x39

    if-le v1, v4, :cond_4

    :cond_1
    const/16 v4, 0x61

    if-lt v1, v4, :cond_2

    const/16 v4, 0x7a

    if-le v1, v4, :cond_4

    :cond_2
    const/16 v4, 0x41

    if-lt v1, v4, :cond_3

    const/16 v4, 0x5a

    if-le v1, v4, :cond_4

    :cond_3
    const/16 v4, 0x3a

    if-ne v1, v4, :cond_6

    :cond_4
    move v4, v2

    :goto_1
    if-nez p3, :cond_7

    move v1, v2

    :goto_2
    if-ne v4, v1, :cond_8

    move p2, v0

    :cond_5
    return p2

    :cond_6
    move v4, v3

    goto :goto_1

    :cond_7
    move v1, v3

    goto :goto_2

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)J
    .locals 4

    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    :cond_1
    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    const-string v1, "-?\\d+"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0

    :cond_2
    throw v0
.end method

.method private static a(JLa/r;Ljava/lang/String;)La/l;
    .locals 30

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v24

    const/4 v4, 0x0

    const/16 v5, 0x3b

    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-static {v0, v4, v1, v5}, La/a/c;->a(Ljava/lang/String;IIC)I

    move-result v5

    const/4 v4, 0x0

    const/16 v6, 0x3d

    move-object/from16 v0, p3

    invoke-static {v0, v4, v5, v6}, La/a/c;->a(Ljava/lang/String;IIC)I

    move-result v4

    if-ne v4, v5, :cond_0

    const/4 v5, 0x0

    :goto_0
    return-object v5

    :cond_0
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v6, v4}, La/a/c;->c(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v5, 0x0

    goto :goto_0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p3

    invoke-static {v0, v4, v5}, La/a/c;->c(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v7

    const-wide v18, 0xe677d21fdbffL

    const-wide/16 v16, -0x1

    const/4 v4, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    add-int/lit8 v5, v5, 0x1

    :goto_1
    move/from16 v0, v24

    if-ge v5, v0, :cond_1b

    const/16 v8, 0x3b

    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-static {v0, v5, v1, v8}, La/a/c;->a(Ljava/lang/String;IIC)I

    move-result v25

    const/16 v8, 0x3d

    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-static {v0, v5, v1, v8}, La/a/c;->a(Ljava/lang/String;IIC)I

    move-result v8

    move-object/from16 v0, p3

    invoke-static {v0, v5, v8}, La/a/c;->c(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v9

    move/from16 v0, v25

    if-ge v8, v0, :cond_3

    add-int/lit8 v5, v8, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-static {v0, v5, v1}, La/a/c;->c(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v5

    :goto_2
    const-string v8, "expires"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_13

    :try_start_0
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v26

    const/4 v8, 0x0

    const/4 v9, 0x0

    move/from16 v0, v26

    invoke-static {v5, v8, v0, v9}, La/l;->a(Ljava/lang/String;IIZ)I

    move-result v23

    const/16 v22, -0x1

    const/16 v20, -0x1

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/16 v21, -0x1

    const/4 v8, -0x1

    sget-object v27, La/l;->d:Ljava/util/regex/Pattern;

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v27

    :goto_3
    move/from16 v0, v23

    move/from16 v1, v26

    if-ge v0, v1, :cond_26

    add-int/lit8 v28, v23, 0x1

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v26

    move/from16 v2, v29

    invoke-static {v5, v0, v1, v2}, La/l;->a(Ljava/lang/String;IIZ)I

    move-result v28

    move-object/from16 v0, v27

    move/from16 v1, v23

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_4

    sget-object v23, La/l;->d:Ljava/util/regex/Pattern;

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/regex/Matcher;->matches()Z

    move-result v23

    if-eqz v23, :cond_4

    const/4 v9, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    const/4 v9, 0x2

    move-object/from16 v0, v27

    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    const/4 v9, 0x3

    move-object/from16 v0, v27

    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    :cond_2
    :goto_4
    add-int/lit8 v23, v28, 0x1

    const/16 v28, 0x0

    move/from16 v0, v23

    move/from16 v1, v26

    move/from16 v2, v28

    invoke-static {v5, v0, v1, v2}, La/l;->a(Ljava/lang/String;IIZ)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v23

    goto :goto_3

    :cond_3
    const-string v5, ""

    goto/16 :goto_2

    :cond_4
    const/16 v23, -0x1

    move/from16 v0, v23

    if-ne v10, v0, :cond_5

    :try_start_1
    sget-object v23, La/l;->c:Ljava/util/regex/Pattern;

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/regex/Matcher;->matches()Z

    move-result v23

    if-eqz v23, :cond_5

    const/4 v10, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    goto :goto_4

    :cond_5
    const/16 v23, -0x1

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_6

    sget-object v23, La/l;->b:Ljava/util/regex/Pattern;

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/regex/Matcher;->matches()Z

    move-result v23

    if-eqz v23, :cond_6

    const/16 v21, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v21

    sget-object v23, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v21

    sget-object v23, La/l;->b:Ljava/util/regex/Pattern;

    invoke-virtual/range {v23 .. v23}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v21

    div-int/lit8 v21, v21, 0x4

    goto :goto_4

    :cond_6
    const/16 v23, -0x1

    move/from16 v0, v23

    if-ne v8, v0, :cond_2

    sget-object v23, La/l;->a:Ljava/util/regex/Pattern;

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/regex/Matcher;->matches()Z

    move-result v23

    if-eqz v23, :cond_2

    const/4 v8, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    goto/16 :goto_4

    :cond_7
    move v5, v8

    :goto_5
    if-ltz v5, :cond_8

    const/16 v8, 0x45

    if-gt v5, v8, :cond_8

    add-int/lit16 v5, v5, 0x7d0

    :cond_8
    const/16 v8, 0x641

    if-ge v5, v8, :cond_9

    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    :catch_0
    move-exception v5

    move-object v8, v11

    :goto_6
    add-int/lit8 v5, v25, 0x1

    move-object v11, v8

    goto/16 :goto_1

    :cond_9
    const/4 v8, -0x1

    move/from16 v0, v21

    if-ne v0, v8, :cond_a

    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    :cond_a
    if-lez v10, :cond_b

    const/16 v8, 0x1f

    if-le v10, v8, :cond_c

    :cond_b
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    :cond_c
    if-ltz v22, :cond_d

    const/16 v8, 0x17

    move/from16 v0, v22

    if-le v0, v8, :cond_e

    :cond_d
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    :cond_e
    if-ltz v20, :cond_f

    const/16 v8, 0x3b

    move/from16 v0, v20

    if-le v0, v8, :cond_10

    :cond_f
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    :cond_10
    if-ltz v9, :cond_11

    const/16 v8, 0x3b

    if-le v9, v8, :cond_12

    :cond_11
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    :cond_12
    new-instance v8, Ljava/util/GregorianCalendar;

    sget-object v23, La/a/c;->c:Ljava/util/TimeZone;

    move-object/from16 v0, v23

    invoke-direct {v8, v0}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/util/Calendar;->setLenient(Z)V

    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v8, v0, v5}, Ljava/util/Calendar;->set(II)V

    const/4 v5, 0x2

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v21

    invoke-virtual {v8, v5, v0}, Ljava/util/Calendar;->set(II)V

    const/4 v5, 0x5

    invoke-virtual {v8, v5, v10}, Ljava/util/Calendar;->set(II)V

    const/16 v5, 0xb

    move/from16 v0, v22

    invoke-virtual {v8, v5, v0}, Ljava/util/Calendar;->set(II)V

    const/16 v5, 0xc

    move/from16 v0, v20

    invoke-virtual {v8, v5, v0}, Ljava/util/Calendar;->set(II)V

    const/16 v5, 0xd

    invoke-virtual {v8, v5, v9}, Ljava/util/Calendar;->set(II)V

    const/16 v5, 0xe

    const/4 v9, 0x0

    invoke-virtual {v8, v5, v9}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v18

    const/4 v15, 0x1

    move-object v8, v11

    goto/16 :goto_6

    :cond_13
    const-string v8, "max-age"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_14

    :try_start_2
    invoke-static {v5}, La/l;->a(Ljava/lang/String;)J
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-wide v16

    const/4 v15, 0x1

    move-object v8, v11

    goto/16 :goto_6

    :catch_1
    move-exception v5

    move-object v8, v11

    goto/16 :goto_6

    :cond_14
    const-string v8, "domain"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_18

    :try_start_3
    const-string v8, "."

    invoke-virtual {v5, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_15

    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    :catch_2
    move-exception v5

    move-object v8, v11

    goto/16 :goto_6

    :cond_15
    const-string v8, "."

    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_16

    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    :cond_16
    invoke-static {v5}, La/a/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_17

    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_17
    const/4 v14, 0x0

    move-object v4, v5

    move-object v8, v11

    goto/16 :goto_6

    :cond_18
    const-string v8, "path"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_19

    move-object v8, v5

    goto/16 :goto_6

    :cond_19
    const-string v5, "secure"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1a

    const/4 v12, 0x1

    move-object v8, v11

    goto/16 :goto_6

    :cond_1a
    const-string v5, "httponly"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_25

    const/4 v13, 0x1

    move-object v8, v11

    goto/16 :goto_6

    :cond_1b
    const-wide/high16 v8, -0x8000000000000000L

    cmp-long v5, v16, v8

    if-nez v5, :cond_1f

    const-wide/high16 v8, -0x8000000000000000L

    :cond_1c
    :goto_7
    if-nez v4, :cond_22

    invoke-virtual/range {p2 .. p2}, La/r;->g()Ljava/lang/String;

    move-result-object v10

    :goto_8
    if-eqz v11, :cond_1d

    const-string v4, "/"

    invoke-virtual {v11, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1e

    :cond_1d
    invoke-virtual/range {p2 .. p2}, La/r;->c()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2f

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    if-eqz v5, :cond_23

    const/4 v11, 0x0

    invoke-virtual {v4, v11, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :goto_9
    move-object v11, v4

    :cond_1e
    new-instance v5, La/l;

    invoke-direct/range {v5 .. v15}, La/l;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZZZ)V

    goto/16 :goto_0

    :cond_1f
    const-wide/16 v8, -0x1

    cmp-long v5, v16, v8

    if-eqz v5, :cond_27

    const-wide v8, 0x20c49ba5e353f7L

    cmp-long v5, v16, v8

    if-gtz v5, :cond_21

    const-wide/16 v8, 0x3e8

    mul-long v8, v8, v16

    :goto_a
    add-long v8, v8, p0

    cmp-long v5, v8, p0

    if-ltz v5, :cond_20

    const-wide v16, 0xe677d21fdbffL

    cmp-long v5, v8, v16

    if-lez v5, :cond_1c

    :cond_20
    const-wide v8, 0xe677d21fdbffL

    goto :goto_7

    :cond_21
    const-wide v8, 0x7fffffffffffffffL

    goto :goto_a

    :cond_22
    move-object/from16 v0, p2

    invoke-static {v0, v4}, La/l;->b(La/r;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_24

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_23
    const-string v4, "/"

    goto :goto_9

    :cond_24
    move-object v10, v4

    goto :goto_8

    :cond_25
    move-object v8, v11

    goto/16 :goto_6

    :cond_26
    const/16 v5, 0x46

    if-lt v8, v5, :cond_7

    const/16 v5, 0x63

    if-gt v8, v5, :cond_7

    add-int/lit16 v5, v8, 0x76c

    goto/16 :goto_5

    :cond_27
    move-wide/from16 v8, v18

    goto :goto_7
.end method

.method public static a(La/r;Ljava/lang/String;)La/l;
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1, p0, p1}, La/l;->a(JLa/r;Ljava/lang/String;)La/l;

    move-result-object v0

    return-object v0
.end method

.method public static a(La/r;La/q;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/r;",
            "La/q;",
            ")",
            "Ljava/util/List",
            "<",
            "La/l;",
            ">;"
        }
    .end annotation

    const-string v0, "Set-Cookie"

    invoke-virtual {p1, v0}, La/q;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    const/4 v1, 0x0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_0

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v0}, La/l;->a(La/r;Ljava/lang/String;)La/l;

    move-result-object v5

    if-eqz v5, :cond_3

    if-nez v1, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v2, v2, 0x1

    move-object v1, v0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_3
    return-object v0

    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_3

    :cond_2
    move-object v0, v1

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_2
.end method

.method private static b(La/r;Ljava/lang/String;)Z
    .locals 3

    invoke-virtual {p0}, La/r;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_2

    invoke-static {v0}, La/a/c;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/l;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/l;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, La/l;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    check-cast p1, La/l;

    iget-object v0, p1, La/l;->e:Ljava/lang/String;

    iget-object v1, p0, La/l;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, La/l;->f:Ljava/lang/String;

    iget-object v1, p0, La/l;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, La/l;->h:Ljava/lang/String;

    iget-object v1, p0, La/l;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, La/l;->i:Ljava/lang/String;

    iget-object v1, p0, La/l;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p1, La/l;->g:J

    iget-wide v2, p0, La/l;->g:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-boolean v0, p1, La/l;->j:Z

    iget-boolean v1, p0, La/l;->j:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, La/l;->k:Z

    iget-boolean v1, p0, La/l;->k:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, La/l;->l:Z

    iget-boolean v1, p0, La/l;->l:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, La/l;->m:Z

    iget-boolean v1, p0, La/l;->m:Z

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 14

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, La/l;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    iget-object v0, p0, La/l;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    iget-object v0, p0, La/l;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v7

    iget-object v0, p0, La/l;->i:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v8

    iget-wide v10, p0, La/l;->g:J

    iget-wide v12, p0, La/l;->g:J

    const/16 v0, 0x20

    ushr-long/2addr v12, v0

    xor-long/2addr v10, v12

    long-to-int v9, v10

    iget-boolean v0, p0, La/l;->j:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iget-boolean v3, p0, La/l;->k:Z

    if-eqz v3, :cond_2

    move v3, v1

    :goto_1
    iget-boolean v4, p0, La/l;->l:Z

    if-eqz v4, :cond_3

    move v4, v1

    :goto_2
    iget-boolean v10, p0, La/l;->m:Z

    if-eqz v10, :cond_0

    move v2, v1

    :cond_0
    add-int/lit16 v1, v5, 0x20f

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v6

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v7

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v8

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v9

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v2

    return v0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v3, v2

    goto :goto_1

    :cond_3
    move v4, v2

    goto :goto_2
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, La/l;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, La/l;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, La/l;->l:Z

    if-eqz v1, :cond_0

    iget-wide v2, p0, La/l;->g:J

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v1, v2, v4

    if-nez v1, :cond_4

    const-string v1, "; max-age=0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    :goto_0
    iget-boolean v1, p0, La/l;->m:Z

    if-nez v1, :cond_1

    const-string v1, "; domain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, La/l;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, "; path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, La/l;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, La/l;->j:Z

    if-eqz v1, :cond_2

    const-string v1, "; secure"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-boolean v1, p0, La/l;->k:Z

    if-eqz v1, :cond_3

    const-string v1, "; httponly"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    const-string v1, "; expires="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    iget-wide v4, p0, La/l;->g:J

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-static {v2}, La/a/d/e;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
